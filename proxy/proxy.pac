function FindProxyForURL(url, host)
{
    var proxy_no = "DIRECT";
    var proxy_host = "SOCKS5 127.0.0.1:36002";

    var sites = new Array(
"twitter.com",
"google.com",
"youtube.com",
"ytimg.com",
"flickr.com",
"wordpress.com",
"bit.ly",
"facebook.com",
"fbcdn.net",
"graph.facebook.com",
"connect.facebook.net",
"appspot.com",
"python.org",
"blogspot.com",
"t.co",
"blogger.com",
"twimg.com",
"twitpic.com",
"blog.netty.io",
"mattfleming.com",
"mediafire.com",
"www.dw.de",
"www.time.com",
"ssl.gstatic.com",
"mashable.com",
"scribd.com",
"us.battle.net",
"git-scm.com",
"stackoverflow.com",
"bbc.co.uk",
"class.coursera.org",
"slideshare.net",
"googleusercontent.com",
"sk1project.org",
"ssl.gstatic.com",
"cloudfront.net",
"nytimes.com"
);

    for (var i = 0; i < sites.length; i++) {
	if (shExpMatch(url, '*'+sites[i]+'*')) {
            return proxy_host;
        }
    }

    return proxy_no;
}
