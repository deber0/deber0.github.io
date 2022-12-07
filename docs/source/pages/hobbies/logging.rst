=======
Logging
=======

A collection of log entries I have found interesting. I will document researching further into what is 
depicted and explain the analysis process. This server is a kind of honeypot for research and learning applications.

.. figure:: /_static/assets/file_injection_attempt.png
    :scale: 100 %
    :alt: Server Log entry
    :align: left

    This is a log entry on a webserver I stood up during AWS research efforts.  Notice the attempt to pass shell parameters to the webserver and the subsequent 404 error.


.. figure:: /_static/assets/base64_inject.png
    :scale: 100 %
    :alt: Server Log entry
    :align: left

    This is a GET request encoded in base64. The webserver responsed the this request and the remote execution attempt is still being assesed. I believe this remote execution attempt is associated with `CVE-2021-44228 <https://www.oracle.com/security-alerts/alert-cve-2021-44228.html>`_.

.. figure:: /_static/assets/base64_decode.png
    :scale: 100 %
    :alt: base64 decoding
    :align: left

    Decoding the appended shell command reveals the full wget path which returned a HTTP 200 web server response according to the previous log entry.
