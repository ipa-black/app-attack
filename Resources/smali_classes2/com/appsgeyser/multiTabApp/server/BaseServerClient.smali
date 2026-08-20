.class public Lcom/appsgeyser/multiTabApp/server/BaseServerClient;
.super Ljava/lang/Object;
.source "BaseServerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;,
        Lcom/appsgeyser/multiTabApp/server/BaseServerClient$HandleRedirectRetryPolicy;
    }
.end annotation


# static fields
.field protected static final FORBIDDEN_RESPONSE:I = 0x193

.field protected static final OK_RESPONSE:I = 0xc8


# instance fields
.field protected _activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

.field protected _config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

.field protected _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 56
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->_context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    return-void
.end method

.method public constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->_activity:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    .line 50
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->_context:Landroid/content/Context;

    .line 51
    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->_config:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 123
    :try_start_0
    invoke-static {v1}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 125
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "&test=1"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 127
    const-string v2, "HEAD"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :catch_0
    :goto_0
    return v0
.end method

.method public loadHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    :try_start_0
    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 143
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "&test=1"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 145
    const-string v0, "HEAD"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 147
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :catch_0
    :goto_0
    return-object v1
.end method

.method public sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;)V
    .locals 3

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 63
    new-instance v0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$1;-><init>(Lcom/appsgeyser/multiTabApp/server/BaseServerClient;Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    new-instance p3, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$2;

    invoke-direct {p3, p0}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$2;-><init>(Lcom/appsgeyser/multiTabApp/server/BaseServerClient;)V

    .line 80
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    invoke-direct {v1, p1, v0, p3}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 81
    new-instance p1, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$HandleRedirectRetryPolicy;

    const/4 p3, 0x5

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v2, 0x2710

    invoke-direct {p1, p0, v2, p3, v0}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$HandleRedirectRetryPolicy;-><init>(Lcom/appsgeyser/multiTabApp/server/BaseServerClient;IIF)V

    invoke-virtual {v1, p1}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 82
    invoke-virtual {v1, p2}, Lcom/android/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 84
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->_context:Landroid/content/Context;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;->getQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2

    const/4 v0, 0x1

    .line 90
    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 91
    new-instance v0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$3;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$3;-><init>(Lcom/appsgeyser/multiTabApp/server/BaseServerClient;Lcom/appsgeyser/multiTabApp/server/BaseServerClient$OnRequestDoneListener;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    new-instance p3, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$4;

    invoke-direct {p3, p0, p4}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$4;-><init>(Lcom/appsgeyser/multiTabApp/server/BaseServerClient;Lcom/android/volley/Response$ErrorListener;)V

    .line 111
    new-instance p4, Lcom/android/volley/toolbox/StringRequest;

    invoke-direct {p4, p1, v0, p3}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 112
    new-instance p1, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$HandleRedirectRetryPolicy;

    const/4 p3, 0x5

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x2710

    invoke-direct {p1, p0, v1, p3, v0}, Lcom/appsgeyser/multiTabApp/server/BaseServerClient$HandleRedirectRetryPolicy;-><init>(Lcom/appsgeyser/multiTabApp/server/BaseServerClient;IIF)V

    invoke-virtual {p4, p1}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 113
    invoke-virtual {p4, p2}, Lcom/android/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 115
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/server/BaseServerClient;->_context:Landroid/content/Context;

    invoke-static {p1}, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/server/RequestQueueHolder;->getQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    .line 116
    invoke-virtual {p1, p4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method
