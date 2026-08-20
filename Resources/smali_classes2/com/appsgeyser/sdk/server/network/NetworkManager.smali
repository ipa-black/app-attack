.class public Lcom/appsgeyser/sdk/server/network/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/server/network/NetworkManager$HandleRedirectRetryPolicy;,
        Lcom/appsgeyser/sdk/server/network/NetworkManager$RequestType;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/appsgeyser/sdk/server/network/NetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkManager;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/server/network/NetworkManager;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager;->INSTANCE:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/appsgeyser/sdk/server/network/NetworkManager;
    .locals 1

    .line 44
    sget-object v0, Lcom/appsgeyser/sdk/server/network/NetworkManager;->INSTANCE:Lcom/appsgeyser/sdk/server/network/NetworkManager;

    return-object v0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 1

    .line 210
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 211
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 212
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getDefaultErrorListener(Ljava/lang/Integer;Landroid/content/Context;)Lcom/android/volley/Response$ErrorListener;
    .locals 0

    .line 166
    new-instance p1, Lcom/appsgeyser/sdk/server/network/NetworkManager$6;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/server/network/NetworkManager$6;-><init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;)V

    return-object p1
.end method

.method public getEmptyRequestDoneListener(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;
    .locals 0

    .line 182
    new-instance p1, Lcom/appsgeyser/sdk/server/network/NetworkManager$7;

    invoke-direct {p1, p0}, Lcom/appsgeyser/sdk/server/network/NetworkManager$7;-><init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;)V

    return-object p1
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

    .line 192
    :try_start_0
    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 194
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

    .line 195
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 196
    const-string v0, "HEAD"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 198
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

.method public sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 84
    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 86
    new-instance v0, Lcom/android/volley/toolbox/StringRequest;

    invoke-direct {v0, p1, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 87
    new-instance p1, Lcom/appsgeyser/sdk/server/network/NetworkManager$HandleRedirectRetryPolicy;

    const/4 p4, 0x5

    const/high16 p5, 0x3f800000    # 1.0f

    const/16 v1, 0x2710

    invoke-direct {p1, p0, v1, p4, p5}, Lcom/appsgeyser/sdk/server/network/NetworkManager$HandleRedirectRetryPolicy;-><init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;IIF)V

    invoke-virtual {v0, p1}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 88
    invoke-virtual {v0, p2}, Lcom/android/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 90
    invoke-static {p3}, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/RequestQueueHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->getQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    .line 91
    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6

    .line 53
    new-instance v4, Lcom/appsgeyser/sdk/server/network/NetworkManager$1;

    invoke-direct {v4, p0, p4, p1, p2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$1;-><init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    new-instance v5, Lcom/appsgeyser/sdk/server/network/NetworkManager$2;

    invoke-direct {v5, p0, p5}, Lcom/appsgeyser/sdk/server/network/NetworkManager$2;-><init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;Lcom/android/volley/Response$ErrorListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsync(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public sendRequestAsyncPost(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            "Lcom/android/volley/Response$Listener<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 134
    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 136
    new-instance v0, Lcom/appsgeyser/sdk/server/network/NetworkManager$5;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/appsgeyser/sdk/server/network/NetworkManager$5;-><init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    .line 142
    new-instance p1, Lcom/appsgeyser/sdk/server/network/NetworkManager$HandleRedirectRetryPolicy;

    const/4 p4, 0x5

    const/high16 p5, 0x3f800000    # 1.0f

    const/16 p6, 0x2710

    invoke-direct {p1, p0, p6, p4, p5}, Lcom/appsgeyser/sdk/server/network/NetworkManager$HandleRedirectRetryPolicy;-><init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;IIF)V

    invoke-virtual {v0, p1}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 143
    invoke-virtual {v0, p2}, Lcom/android/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 145
    invoke-static {p3}, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/server/RequestQueueHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/server/RequestQueueHolder;->getQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    .line 146
    invoke-virtual {p1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method public sendRequestAsyncPost(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            "Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;",
            "Lcom/android/volley/Response$ErrorListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    new-instance v4, Lcom/appsgeyser/sdk/server/network/NetworkManager$3;

    invoke-direct {v4, p0, p4, p1, p2}, Lcom/appsgeyser/sdk/server/network/NetworkManager$3;-><init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    new-instance v5, Lcom/appsgeyser/sdk/server/network/NetworkManager$4;

    invoke-direct {v5, p0, p5}, Lcom/appsgeyser/sdk/server/network/NetworkManager$4;-><init>(Lcom/appsgeyser/sdk/server/network/NetworkManager;Lcom/android/volley/Response$ErrorListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    .line 119
    invoke-virtual/range {v0 .. v6}, Lcom/appsgeyser/sdk/server/network/NetworkManager;->sendRequestAsyncPost(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    return-void
.end method
