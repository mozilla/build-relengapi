# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

from __future__ import absolute_import

import flask
import requests
import structlog

log = structlog.get_logger()
bp = flask.Blueprint('treestatus', __name__)


API_URL = "https://treestatus.mozilla-releng.net/"
URL = "https://mozilla-releng.net/treestatus"


@bp.route('/')
def home():
    log.info('Redirecting to treestatus.')
    return flask.redirect(URL)


@bp.route('/details/<path:tree>')
def tree_details(tree):
    log.info('Redirecting to tree: %s.' % tree)
    return flask.redirect('%s/show/%s' % (URL, tree))


@bp.route('/<path:path>')
def proxy_api(path):
    log.info('Proxying treestatus path: ' + path)

    # fetch the url, and stream it back
    response = requests.get(
        API_URL + path,
        stream=True,
        params=flask.request.args,
    )

    # reply with reponse from requests library
    log.info('Received treestatus response with status code %s' % (response.status_code))  # no-qa
    return flask.Response(
        response=flask.stream_with_context(response.iter_content()),
        status=response.status_code,
        headers=response.raw.headers.items(),
        content_type=response.headers['content-type'],
    )
