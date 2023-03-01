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
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    userAgent = "Mozilla/5.0"

    response = requests.get(url, headers={"user-agent":userAgent})
    if not response:
        return 0
    retValue = response.json().get('data').get('subcribers')
    if retValue:
        return retValue
    else:
        return 0
