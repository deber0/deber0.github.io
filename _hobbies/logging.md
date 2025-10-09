---
title: "Security Logging & Analysis"
description: "Analyzing server logs and security incidents for learning and research"
image: "/assets/images/file_injection_attempt.png"
category: "Cybersecurity"
---

# Security Logging & Analysis

A collection of log entries I have found interesting. I document my research into what is depicted and explain the analysis process. This server is a kind of honeypot for research and learning applications.

## File Injection Attempt

![File Injection Attempt](/assets/images/file_injection_attempt.png){: .log-image}
*Server log entry showing attempted shell parameter injection*

This is a log entry on a webserver I stood up during AWS research efforts. Notice the attempt to pass shell parameters to the webserver and the subsequent 404 error.

## Base64 Encoded Attack

![Base64 Injection](/assets/images/base64_inject.png){: .log-image}
*GET request encoded in base64*

This is a GET request encoded in base64. The webserver responded to this request and the remote execution attempt is still being assessed. I believe this remote execution attempt is associated with [CVE-2021-44228](https://www.oracle.com/security-alerts/alert-cve-2021-44228.html) (Log4Shell).

## Decoded Analysis

![Base64 Decoded](/assets/images/base64_decode.png){: .log-image}
*Decoding reveals the full attack vector*

Decoding the appended shell command reveals the full wget path which returned a HTTP 200 web server response according to the previous log entry.

## Learning Outcomes

This honeypot research has provided valuable insights into:
- Common attack vectors used by malicious actors
- The importance of proper input validation
- Log analysis techniques for incident response
- Understanding of CVE-2021-44228 exploitation attempts

<style>
.log-image {
  display: block;
  margin: 1.5rem auto;
  max-width: 100%;
  border-radius: 8px;
  border: 1px solid #ddd;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}
</style>