.class public Lcom/explorestack/iab/vast/processor/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/explorestack/iab/vast/VastRequest;

.field public final b:I

.field public c:Lcom/explorestack/iab/vast/processor/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/iab/vast/processor/b<",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/explorestack/iab/vast/tags/AdContentTag;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/iab/vast/VastRequest;",
            "Lcom/explorestack/iab/vast/processor/b<",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/explorestack/iab/vast/processor/c;-><init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/b;I)V

    return-void
.end method

.method public constructor <init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/b;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/iab/vast/VastRequest;",
            "Lcom/explorestack/iab/vast/processor/b<",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/processor/c;->d:Ljava/util/Stack;

    const/4 v0, 0x0

    iput v0, p0, Lcom/explorestack/iab/vast/processor/c;->e:I

    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/c;->a:Lcom/explorestack/iab/vast/VastRequest;

    iput-object p2, p0, Lcom/explorestack/iab/vast/processor/c;->c:Lcom/explorestack/iab/vast/processor/b;

    iput p3, p0, Lcom/explorestack/iab/vast/processor/c;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/explorestack/iab/vast/tags/InLineAdTag;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/iab/vast/tags/InLineAdTag;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/explorestack/iab/vast/tags/LinearCreativeTag;",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/AdContentTag;->getCreativeTagList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/iab/vast/tags/CreativeTag;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/CreativeTag;->getCreativeContentTag()Lcom/explorestack/iab/vast/tags/CreativeContentTag;

    move-result-object v1

    instance-of v2, v1, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;->getMediaFileTagList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    iget-object p1, p0, Lcom/explorestack/iab/vast/processor/c;->c:Lcom/explorestack/iab/vast/processor/b;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/vast/processor/b;->a(Ljava/util/List;)Landroid/util/Pair;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Lcom/explorestack/iab/vast/tags/AdContentTag;Lcom/explorestack/iab/vast/tags/VastTag;Lcom/explorestack/iab/vast/processor/e;)Lcom/explorestack/iab/vast/processor/d;
    .locals 6

    new-instance v0, Lcom/explorestack/iab/vast/processor/d;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/processor/d;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/explorestack/iab/vast/tags/VastTag;->getAdTagList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x12f

    if-ge v1, v2, :cond_8

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/tags/VastTag;->getAdTagList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/iab/vast/tags/AdTag;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/tags/AdTag;->getAdContentTag()Lcom/explorestack/iab/vast/tags/AdContentTag;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/tags/AdTag;->getAdContentTag()Lcom/explorestack/iab/vast/tags/AdContentTag;

    move-result-object v2

    instance-of v4, v2, Lcom/explorestack/iab/vast/tags/InLineAdTag;

    if-eqz v4, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/explorestack/iab/vast/tags/InLineAdTag;

    invoke-virtual {p0, v3}, Lcom/explorestack/iab/vast/processor/c;->b(Lcom/explorestack/iab/vast/tags/InLineAdTag;)Lcom/explorestack/iab/vast/processor/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/explorestack/iab/vast/processor/d;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v3}, Lcom/explorestack/iab/vast/processor/d;->a()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/explorestack/iab/vast/processor/c;->a(Ljava/util/List;)V

    if-eqz p1, :cond_1

    invoke-virtual {v3}, Lcom/explorestack/iab/vast/processor/d;->e()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/explorestack/iab/vast/processor/d;->b()I

    move-result v3

    invoke-virtual {v0, p1, v3}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/explorestack/iab/vast/processor/d;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/explorestack/iab/vast/processor/d;->a(I)V

    goto :goto_2

    :cond_2
    instance-of v4, v2, Lcom/explorestack/iab/vast/tags/WrapperAdTag;

    if-eqz v4, :cond_6

    invoke-virtual {p3}, Lcom/explorestack/iab/vast/processor/e;->c()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v2

    check-cast v4, Lcom/explorestack/iab/vast/tags/WrapperAdTag;

    invoke-virtual {p0, v4}, Lcom/explorestack/iab/vast/processor/c;->a(Lcom/explorestack/iab/vast/tags/WrapperAdTag;)Lcom/explorestack/iab/vast/processor/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/explorestack/iab/vast/processor/d;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {v4}, Lcom/explorestack/iab/vast/processor/d;->a()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/explorestack/iab/vast/processor/c;->a(Ljava/util/List;)V

    if-eqz p1, :cond_5

    invoke-virtual {v4}, Lcom/explorestack/iab/vast/processor/d;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/explorestack/iab/vast/processor/d;->b()I

    move-result v3

    :cond_4
    invoke-virtual {v0, p1, v3}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v3}, Lcom/explorestack/iab/vast/processor/d;->a(I)V

    :goto_1
    if-nez v1, :cond_6

    invoke-virtual {p3}, Lcom/explorestack/iab/vast/processor/e;->b()Z

    move-result v3

    if-nez v3, :cond_6

    return-object v0

    :cond_6
    :goto_2
    invoke-virtual {p0, v2}, Lcom/explorestack/iab/vast/processor/c;->b(Lcom/explorestack/iab/vast/tags/AdContentTag;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/d;->b()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual {v0, p1, v3}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V

    :cond_9
    return-object v0
.end method

.method public a(Lcom/explorestack/iab/vast/tags/WrapperAdTag;)Lcom/explorestack/iab/vast/processor/d;
    .locals 10

    new-instance v0, Lcom/explorestack/iab/vast/processor/d;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/processor/d;-><init>()V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/processor/c;->b()Z

    move-result v1

    const-string v2, "VastProcessor"

    if-eqz v1, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v3, p0, Lcom/explorestack/iab/vast/processor/c;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "VAST wrapping exceeded max limit of %d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x12e

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V

    return-object v0

    :cond_0
    iget v1, p0, Lcom/explorestack/iab/vast/processor/c;->e:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/explorestack/iab/vast/processor/c;->e:I

    iget-object v1, p0, Lcom/explorestack/iab/vast/processor/c;->d:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/WrapperAdTag;->getVastAdTagUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v4, 0x12d

    if-eqz v1, :cond_1

    const-string v1, "VASTAdTagURI is null or empty"

    invoke-static {v2, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v4}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V

    return-object v0

    :cond_1
    new-instance v1, Lcom/explorestack/iab/vast/processor/e;

    invoke-direct {v1, p1}, Lcom/explorestack/iab/vast/processor/e;-><init>(Lcom/explorestack/iab/vast/tags/VastXmlTag;)V

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/WrapperAdTag;->getVastAdTagUri()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    const/16 v9, 0x12f

    if-eq v7, v8, :cond_3

    const/16 v1, 0xcc

    if-eq v7, v1, :cond_2

    invoke-virtual {v0, p1, v4}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V

    return-object v0

    :cond_2
    const-string v1, "Wrapper response code: 204"

    invoke-static {v2, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v9}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V

    return-object v0

    :cond_3
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/explorestack/iab/vast/tags/a;->a(Ljava/io/InputStream;)Lcom/explorestack/iab/vast/tags/VastTag;

    move-result-object v6

    if-nez v6, :cond_5

    const-string v1, "Invalid Vast"

    invoke-static {v2, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x65

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_4

    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v2, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    :try_start_2
    invoke-virtual {v6}, Lcom/explorestack/iab/vast/tags/VastTag;->hasAd()Z

    move-result v7

    if-nez v7, :cond_7

    const-string v1, "Vast has no ad"

    invoke-static {v2, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v9}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_6

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {v2, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-object v0

    :cond_7
    :try_start_4
    invoke-virtual {v6}, Lcom/explorestack/iab/vast/tags/VastTag;->getAdTagList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v3, :cond_9

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/processor/e;->a()Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v1, 0x12c

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_8

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-static {v2, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    return-object v0

    :cond_9
    :try_start_6
    invoke-virtual {p0, p1, v6, v1}, Lcom/explorestack/iab/vast/processor/c;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;Lcom/explorestack/iab/vast/tags/VastTag;Lcom/explorestack/iab/vast/processor/e;)Lcom/explorestack/iab/vast/processor/d;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/explorestack/iab/vast/processor/d;->a(Z)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_a

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-static {v2, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_3
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_9

    :catch_4
    move-exception v1

    :try_start_8
    invoke-static {v2, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v5, :cond_b

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    invoke-static {v2, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    return-object v0

    :catch_6
    move-exception v1

    :try_start_a
    invoke-static {v2, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1, v4}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v5, :cond_c

    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_5

    :catch_7
    move-exception p1

    invoke-static {v2, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    return-object v0

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_6

    :catch_b
    move-exception v1

    :goto_6
    :try_start_c
    invoke-static {v2, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1, v4}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v5, :cond_d

    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_7

    :catch_c
    move-exception p1

    invoke-static {v2, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    return-object v0

    :catch_d
    move-exception v1

    :try_start_e
    invoke-static {v2, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1, v4}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v5, :cond_e

    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_8

    :catch_e
    move-exception p1

    invoke-static {v2, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_8
    return-object v0

    :goto_9
    if-eqz v5, :cond_f

    :try_start_10
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_a

    :catch_f
    move-exception v0

    invoke-static {v2, v0}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_a
    throw p1
.end method

.method public a(Ljava/lang/String;)Lcom/explorestack/iab/vast/processor/d;
    .locals 2

    const-string v0, "VastProcessor"

    const-string v1, "process"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/explorestack/iab/vast/processor/d;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/processor/d;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/a;->a(Ljava/lang/String;)Lcom/explorestack/iab/vast/tags/VastTag;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/VastTag;->hasAd()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/explorestack/iab/vast/processor/e;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/processor/e;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/explorestack/iab/vast/processor/c;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;Lcom/explorestack/iab/vast/tags/VastTag;Lcom/explorestack/iab/vast/processor/e;)Lcom/explorestack/iab/vast/processor/d;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/16 p1, 0x65

    :goto_1
    invoke-virtual {v0, p1}, Lcom/explorestack/iab/vast/processor/d;->a(I)V

    return-object v0

    :catch_0
    const/16 p1, 0x64

    goto :goto_1
.end method

.method public final a()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/explorestack/iab/vast/processor/c;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/explorestack/iab/vast/processor/c;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/iab/vast/tags/AdContentTag;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/tags/AdContentTag;->getErrorUrlList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/tags/AdContentTag;->getErrorUrlList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final a(Lcom/explorestack/iab/vast/tags/AdContentTag;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/iab/vast/tags/AdContentTag;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/explorestack/iab/vast/tags/CompanionTag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/AdContentTag;->getCreativeTagList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/iab/vast/tags/CreativeTag;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/CreativeTag;->getCreativeContentTag()Lcom/explorestack/iab/vast/tags/CreativeContentTag;

    move-result-object v1

    instance-of v2, v1, Lcom/explorestack/iab/vast/tags/CompanionAdsCreativeTag;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/explorestack/iab/vast/tags/CompanionAdsCreativeTag;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/CompanionAdsCreativeTag;->getCompanionTagList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/CompanionAdsCreativeTag;->getCompanionTagList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/c;->a:Lcom/explorestack/iab/vast/VastRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/VastRequest;->fireErrorUrls(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/explorestack/iab/vast/tags/CompanionAdsCreativeTag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/explorestack/iab/vast/tags/CompanionAdsCreativeTag;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/tags/CompanionAdsCreativeTag;->getCompanionTagList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/iab/vast/tags/CompanionTag;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/CompanionTag;->hasCreative()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getCompanionClickTrackingList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final b(Lcom/explorestack/iab/vast/tags/InLineAdTag;)Lcom/explorestack/iab/vast/processor/d;
    .locals 14

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/c;->d:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/explorestack/iab/vast/processor/d;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/processor/d;-><init>()V

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/processor/c;->a(Lcom/explorestack/iab/vast/tags/InLineAdTag;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x65

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;I)V

    goto/16 :goto_4

    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/16 v1, 0x193

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/explorestack/iab/vast/processor/c;->d:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->empty()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/explorestack/iab/vast/processor/c;->d:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/explorestack/iab/vast/tags/AdContentTag;

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Lcom/explorestack/iab/vast/tags/AdContentTag;->getImpressionUrlList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Lcom/explorestack/iab/vast/tags/AdContentTag;->getImpressionUrlList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {v9}, Lcom/explorestack/iab/vast/tags/AdContentTag;->getCreativeTagList()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v9}, Lcom/explorestack/iab/vast/tags/AdContentTag;->getCreativeTagList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/explorestack/iab/vast/tags/CreativeTag;

    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v11}, Lcom/explorestack/iab/vast/tags/CreativeTag;->getCreativeContentTag()Lcom/explorestack/iab/vast/tags/CreativeContentTag;

    move-result-object v11

    instance-of v12, v11, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    if-eqz v12, :cond_8

    check-cast v11, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    invoke-virtual {v11}, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;->getVideoClicksTag()Lcom/explorestack/iab/vast/tags/VideoClicksTag;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/explorestack/iab/vast/tags/VideoClicksTag;->getClickTrackingUrlList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v12}, Lcom/explorestack/iab/vast/tags/VideoClicksTag;->getClickTrackingUrlList()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-virtual {v11}, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {p0, v5, v11}, Lcom/explorestack/iab/vast/processor/c;->a(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_2

    :cond_8
    instance-of v12, v11, Lcom/explorestack/iab/vast/tags/CompanionAdsCreativeTag;

    if-eqz v12, :cond_5

    check-cast v11, Lcom/explorestack/iab/vast/tags/CompanionAdsCreativeTag;

    invoke-virtual {p0, v4, v11}, Lcom/explorestack/iab/vast/processor/c;->a(Ljava/util/List;Lcom/explorestack/iab/vast/tags/CompanionAdsCreativeTag;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v9}, Lcom/explorestack/iab/vast/tags/AdContentTag;->getExtensionTagList()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/explorestack/iab/vast/tags/ExtensionTag;

    instance-of v11, v10, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    if-eqz v11, :cond_b

    if-nez v8, :cond_a

    move-object v8, v10

    check-cast v8, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    goto :goto_3

    :cond_b
    instance-of v11, v10, Lcom/explorestack/iab/vast/tags/AdVerificationsExtensionTag;

    if-eqz v11, :cond_a

    check-cast v10, Lcom/explorestack/iab/vast/tags/AdVerificationsExtensionTag;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    new-instance v7, Lcom/explorestack/iab/vast/processor/VastAd;

    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/explorestack/iab/vast/tags/LinearCreativeTag;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    invoke-direct {v7, v9, v1}, Lcom/explorestack/iab/vast/processor/VastAd;-><init>(Lcom/explorestack/iab/vast/tags/LinearCreativeTag;Lcom/explorestack/iab/vast/tags/MediaFileTag;)V

    invoke-virtual {v7, v2}, Lcom/explorestack/iab/vast/processor/VastAd;->d(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/processor/c;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/explorestack/iab/vast/processor/VastAd;->c(Ljava/util/ArrayList;)V

    invoke-virtual {v7, v3}, Lcom/explorestack/iab/vast/processor/VastAd;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v7, v4}, Lcom/explorestack/iab/vast/processor/VastAd;->setWrapperCompanionClickTrackingUrlList(Ljava/util/ArrayList;)V

    invoke-virtual {v7, v5}, Lcom/explorestack/iab/vast/processor/VastAd;->a(Ljava/util/EnumMap;)V

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/processor/c;->a(Lcom/explorestack/iab/vast/tags/AdContentTag;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/explorestack/iab/vast/processor/VastAd;->b(Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Lcom/explorestack/iab/vast/processor/VastAd;->a(Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;)V

    invoke-virtual {v7, v6}, Lcom/explorestack/iab/vast/processor/VastAd;->setAdVerificationsExtensionList(Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/vast/processor/d;->a(I)V

    invoke-virtual {v0, v7}, Lcom/explorestack/iab/vast/processor/d;->a(Lcom/explorestack/iab/vast/processor/VastAd;)V

    :goto_4
    return-object v0
.end method

.method public b(Lcom/explorestack/iab/vast/tags/AdContentTag;)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/c;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/c;->d:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/explorestack/iab/vast/processor/c;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lcom/explorestack/iab/vast/processor/c;->e:I

    iget v1, p0, Lcom/explorestack/iab/vast/processor/c;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
