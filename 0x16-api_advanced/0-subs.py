#!/usr/bin/python3
"""
Query Radit API for number of subscribers for a given subreddit
"""
import requests


def number_of_subscribers(subreddit):
    """
    return number of subscribers for a given subreddit
    return 0 if invalid subreddit given
    """
    url = "https://reddit.com/r/{}/about.json".format(subreddit)
    headers = requests.utils.default_headers()
    headers.update({'User-Agent': 'My User Agent 1.0'})

    response = requests.get(url, headers=headers).json()
    if not response:
        return 0
    subscribers = response.get('data', {}).get('subscribers')
    if not subscribers:
        return 0
    return subscribers
