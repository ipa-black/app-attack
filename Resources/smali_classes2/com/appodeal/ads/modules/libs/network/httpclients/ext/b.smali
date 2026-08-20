.class public final Lcom/appodeal/ads/modules/libs/network/httpclients/ext/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/net/URLConnection;Lcom/appodeal/ads/modules/libs/network/httpclients/c;)Ljava/lang/Object;
    .locals 13

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const v0, 0x9c40

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v0, p0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->c()Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    move-result-object v2

    invoke-static {v2}, Lcom/appodeal/ads/modules/libs/network/httpclients/ext/a;->a(Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/List;

    const-string v5, ";"

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->a()[B

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    instance-of v4, p0, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_4

    move-object v4, p0

    check-cast v4, Ljava/net/HttpURLConnection;

    goto :goto_4

    :cond_4
    move-object v4, v1

    :goto_4
    const/4 v5, -0x1

    if-nez v4, :cond_5

    move v4, v5

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    :goto_5
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_6
    const/16 v7, 0x400

    const/4 v8, 0x0

    :try_start_7
    new-array v7, v7, [B

    :goto_6
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-eq v9, v5, :cond_7

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6

    :cond_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v7, "URLConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " <-- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/appodeal/ads/modules/libs/network/httpclients/c;->c()Lcom/appodeal/ads/modules/libs/network/HttpClient$Method;

    move-result-object p1

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v9, 0x20

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v9, ", raw response(size: "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length v9, v5

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v9, ", data: "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v9, "rawResponse"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/appodeal/ads/modules/common/internal/ext/ByteArrayExtKt;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v9, 0x29

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x4

    invoke-static {v7, p1, v1, v9, v1}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->logInternal$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v1, v5

    :catch_0
    const/16 p1, 0xc9

    if-gt p1, v4, :cond_8

    const/16 p1, 0x12c

    if-ge v4, p1, :cond_8

    goto :goto_7

    :cond_8
    move v2, v8

    :goto_7
    const/16 p1, 0xc8

    if-eq v4, p1, :cond_c

    if-eqz v2, :cond_9

    goto :goto_9

    :cond_9
    const/16 p0, 0x190

    const/16 p1, 0x1f4

    if-gt p0, v4, :cond_a

    if-ge v4, p1, :cond_a

    :try_start_8
    sget-object p0, Lcom/appodeal/ads/modules/libs/network/HttpError$RequestError;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/HttpError$RequestError;

    goto :goto_8

    :cond_a
    if-gt p1, v4, :cond_b

    const/16 p0, 0x258

    if-ge v4, p0, :cond_b

    sget-object p0, Lcom/appodeal/ads/modules/libs/network/HttpError$ServerError;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/HttpError$ServerError;

    goto :goto_8

    :cond_b
    sget-object p0, Lcom/appodeal/ads/modules/libs/network/HttpError$InternalError;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/HttpError$InternalError;

    :goto_8
    new-instance p1, Lcom/appodeal/ads/modules/libs/network/httpclients/e$a;

    invoke-direct {p1, v6, p0}, Lcom/appodeal/ads/modules/libs/network/httpclients/e$a;-><init>(Ljava/util/Map;Lcom/appodeal/ads/modules/libs/network/HttpError;)V

    if-nez v0, :cond_d

    goto :goto_a

    :cond_c
    :goto_9
    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/appodeal/ads/modules/libs/network/httpclients/e$b;

    invoke-direct {p1, v1, p0, v6}, Lcom/appodeal/ads/modules/libs/network/httpclients/e$b;-><init>([BLjava/lang/String;Ljava/util/Map;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v0, :cond_d

    goto :goto_a

    :cond_d
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_10

    :catchall_0
    move-exception p0

    goto :goto_12

    :catch_1
    move-exception p0

    goto :goto_c

    :catchall_1
    move-exception p0

    goto :goto_11

    :catch_2
    move-exception p0

    goto :goto_b

    :catchall_2
    move-exception p0

    move-object v0, v1

    goto :goto_11

    :catch_3
    move-exception p0

    move-object v0, v1

    :goto_b
    move-object v3, v1

    :goto_c
    move-object v1, v0

    :try_start_a
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    new-instance v0, Lcom/appodeal/ads/modules/libs/network/HttpError$UncaughtException;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/modules/libs/network/HttpError$UncaughtException;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lcom/appodeal/ads/modules/libs/network/httpclients/e$a;

    invoke-direct {p0, p1, v0}, Lcom/appodeal/ads/modules/libs/network/httpclients/e$a;-><init>(Ljava/util/Map;Lcom/appodeal/ads/modules/libs/network/HttpError;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-nez v1, :cond_e

    goto :goto_d

    :cond_e
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :goto_d
    if-nez v3, :cond_f

    goto :goto_e

    :cond_f
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    :goto_e
    if-nez v3, :cond_10

    goto :goto_f

    :cond_10
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :goto_f
    move-object p1, p0

    :goto_10
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1a

    :catchall_3
    move-exception p0

    move-object v0, v1

    move-object v1, v3

    :goto_11
    move-object v3, v1

    :goto_12
    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_13
    if-nez v3, :cond_12

    goto :goto_14

    :cond_12
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    :goto_14
    if-nez v3, :cond_13

    goto :goto_19

    :cond_13
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_19

    :catchall_4
    move-exception p0

    goto :goto_17

    :catch_4
    move-object v1, v3

    goto :goto_15

    :catchall_5
    move-exception p0

    goto :goto_16

    :catch_5
    :goto_15
    :try_start_c
    sget-object p0, Lcom/appodeal/ads/modules/libs/network/HttpError$RequestError;->INSTANCE:Lcom/appodeal/ads/modules/libs/network/HttpError$RequestError;

    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :goto_16
    move-object v3, v1

    :goto_17
    if-nez v3, :cond_14

    goto :goto_18

    :cond_14
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    :goto_18
    if-nez v3, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :goto_19
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1a
    return-object p0
.end method
