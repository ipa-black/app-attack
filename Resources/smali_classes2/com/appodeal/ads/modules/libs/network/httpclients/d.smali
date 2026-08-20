.class public final Lcom/appodeal/ads/modules/libs/network/httpclients/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/appodeal/ads/modules/libs/network/httpclients/c;)Ljava/lang/Object;
    .locals 3

    const-string v0, "rawRequest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "connection"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/appodeal/ads/modules/libs/network/httpclients/ext/b;->a(Ljava/net/URLConnection;Lcom/appodeal/ads/modules/libs/network/httpclients/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/net/HttpURLConnection;

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_1
    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/net/HttpURLConnection;

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_2
    throw p0
.end method
