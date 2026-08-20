.class public Lcom/yandex/metrica/impl/ob/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/UnderlyingNetworkTask;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/s2;

.field private final b:Lcom/yandex/metrica/impl/ob/mc;

.field private final c:Lcom/yandex/metrica/impl/ob/a8;

.field private final d:Lcom/yandex/metrica/impl/ob/ed;

.field private final e:Lcom/yandex/metrica/impl/ob/Fc;

.field private final f:Lcom/yandex/metrica/impl/ob/Pg;

.field private final g:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/networktasks/api/FullUrlFormer<",
            "Lcom/yandex/metrica/impl/ob/gd;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/yandex/metrica/networktasks/api/ConfigProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/networktasks/api/ConfigProvider<",
            "Lcom/yandex/metrica/impl/ob/gd;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

.field private final j:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

.field private final k:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

.field private l:J

.field private m:Lcom/yandex/metrica/impl/ob/dd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/s2;Lcom/yandex/metrica/impl/ob/Fc;Lcom/yandex/metrica/impl/ob/Pg;Lcom/yandex/metrica/networktasks/api/ConfigProvider;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/metrica/impl/ob/s2;",
            "Lcom/yandex/metrica/impl/ob/Fc;",
            "Lcom/yandex/metrica/impl/ob/Pg;",
            "Lcom/yandex/metrica/networktasks/api/ConfigProvider<",
            "Lcom/yandex/metrica/impl/ob/gd;",
            ">;",
            "Lcom/yandex/metrica/networktasks/api/RequestDataHolder;",
            "Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;",
            "Lcom/yandex/metrica/networktasks/api/FullUrlFormer<",
            "Lcom/yandex/metrica/impl/ob/gd;",
            ">;",
            "Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->w()Lcom/yandex/metrica/impl/ob/e8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/e8;->a()Lcom/yandex/metrica/impl/ob/a8;

    move-result-object v4

    new-instance v6, Lcom/yandex/metrica/impl/ob/ed;

    move-object v0, p1

    invoke-direct {v6, p1}, Lcom/yandex/metrica/impl/ob/ed;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    new-instance v9, Lcom/yandex/metrica/impl/ob/Ql;

    invoke-direct {v9}, Lcom/yandex/metrica/impl/ob/Ql;-><init>()V

    new-instance v12, Lcom/yandex/metrica/networktasks/api/DefaultNetworkResponseHandler;

    invoke-direct {v12}, Lcom/yandex/metrica/networktasks/api/DefaultNetworkResponseHandler;-><init>()V

    move-object v7, v0

    move-object/from16 v8, p9

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v7 .. v12}, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;-><init>(Lcom/yandex/metrica/networktasks/api/RequestBodyEncrypter;Lcom/yandex/metrica/networktasks/api/Compressor;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/NetworkResponseHandler;)V

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p5

    move-object v11, v0

    .line 2
    invoke-direct/range {v1 .. v11}, Lcom/yandex/metrica/impl/ob/cd;-><init>(Lcom/yandex/metrica/impl/ob/s2;Lcom/yandex/metrica/impl/ob/Fc;Lcom/yandex/metrica/impl/ob/a8;Lcom/yandex/metrica/impl/ob/Pg;Lcom/yandex/metrica/impl/ob/ed;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/ConfigProvider;Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/s2;Lcom/yandex/metrica/impl/ob/Fc;Lcom/yandex/metrica/impl/ob/a8;Lcom/yandex/metrica/impl/ob/Pg;Lcom/yandex/metrica/impl/ob/ed;Lcom/yandex/metrica/networktasks/api/FullUrlFormer;Lcom/yandex/metrica/networktasks/api/RequestDataHolder;Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;Lcom/yandex/metrica/networktasks/api/ConfigProvider;Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/s2;",
            "Lcom/yandex/metrica/impl/ob/Fc;",
            "Lcom/yandex/metrica/impl/ob/a8;",
            "Lcom/yandex/metrica/impl/ob/Pg;",
            "Lcom/yandex/metrica/impl/ob/ed;",
            "Lcom/yandex/metrica/networktasks/api/FullUrlFormer<",
            "Lcom/yandex/metrica/impl/ob/gd;",
            ">;",
            "Lcom/yandex/metrica/networktasks/api/RequestDataHolder;",
            "Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;",
            "Lcom/yandex/metrica/networktasks/api/ConfigProvider<",
            "Lcom/yandex/metrica/impl/ob/gd;",
            ">;",
            "Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p10, p0, Lcom/yandex/metrica/impl/ob/cd;->k:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    .line 5
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/cd;->a:Lcom/yandex/metrica/impl/ob/s2;

    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/cd;->e:Lcom/yandex/metrica/impl/ob/Fc;

    .line 7
    iput-object p9, p0, Lcom/yandex/metrica/impl/ob/cd;->h:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

    .line 8
    invoke-interface {p9}, Lcom/yandex/metrica/networktasks/api/ConfigProvider;->getConfig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/metrica/impl/ob/gd;

    .line 9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gd;->z()Lcom/yandex/metrica/impl/ob/mc;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/mc;

    .line 10
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/cd;->c:Lcom/yandex/metrica/impl/ob/a8;

    .line 11
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/cd;->d:Lcom/yandex/metrica/impl/ob/ed;

    .line 12
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/cd;->f:Lcom/yandex/metrica/impl/ob/Pg;

    .line 13
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/cd;->i:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    .line 14
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/cd;->j:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    .line 15
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/cd;->g:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    .line 16
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/cd;->b()V

    .line 17
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/gd;->A()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->setHosts(Ljava/util/List;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->d:Lcom/yandex/metrica/impl/ob/ed;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cd;->b:Lcom/yandex/metrica/impl/ob/mc;

    iget v1, v1, Lcom/yandex/metrica/impl/ob/mc;->d:I

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/ed;->a(I)Lcom/yandex/metrica/impl/ob/dd;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->m:Lcom/yandex/metrica/impl/ob/dd;

    .line 2
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/dd;->c:Lcom/yandex/metrica/impl/ob/pf;

    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/pf;->b:[Lcom/yandex/metrica/impl/ob/pf$a;

    array-length v1, v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/pf;->a:[Lcom/yandex/metrica/impl/ob/pf$b;

    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cd;->k:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    move-result-object v0

    .line 5
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;->prepareAndSetPostData([B)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->c:Lcom/yandex/metrica/impl/ob/a8;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a8;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/cd;->l:J

    .line 3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/cd;->f:Lcom/yandex/metrica/impl/ob/Pg;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/metrica/impl/ob/Pg;->a(J)V

    return-void
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 1

    const-string v0, "LocationTask"

    return-object v0
.end method

.method public getFullUrlFormer()Lcom/yandex/metrica/networktasks/api/FullUrlFormer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/metrica/networktasks/api/FullUrlFormer<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->g:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    return-object v0
.end method

.method public getRequestDataHolder()Lcom/yandex/metrica/networktasks/api/RequestDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->i:Lcom/yandex/metrica/networktasks/api/RequestDataHolder;

    return-object v0
.end method

.method public getResponseDataHolder()Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->j:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    return-object v0
.end method

.method public getRetryPolicyConfig()Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->h:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/ConfigProvider;->getConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/gd;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Eg;->q()Lcom/yandex/metrica/networktasks/api/RetryPolicyConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->t()Lcom/yandex/metrica/impl/ob/sd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateTask()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->h:Lcom/yandex/metrica/networktasks/api/ConfigProvider;

    invoke-interface {v0}, Lcom/yandex/metrica/networktasks/api/ConfigProvider;->getConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/gd;

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/cd;->a:Lcom/yandex/metrica/impl/ob/s2;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/s2;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Eg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Eg;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->g:Lcom/yandex/metrica/networktasks/api/FullUrlFormer;

    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/FullUrlFormer;->getAllHosts()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 19
    :cond_3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/cd;->a()Z

    move-result v0

    return v0
.end method

.method public onPerformRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->k:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;->onPerformRequest()V

    return-void
.end method

.method public onPostRequestComplete(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/cd;->j:Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;

    invoke-virtual {p1}, Lcom/yandex/metrica/networktasks/api/ResponseDataHolder;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->b(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/cd;->d:Lcom/yandex/metrica/impl/ob/ed;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->m:Lcom/yandex/metrica/impl/ob/dd;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/ed;->a(Lcom/yandex/metrica/impl/ob/dd;)V

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/cd;->c:Lcom/yandex/metrica/impl/ob/a8;

    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/cd;->l:J

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/a8;->c(J)V

    return-void
.end method

.method public onRequestComplete()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->k:Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;

    invoke-virtual {v0}, Lcom/yandex/metrica/networktasks/api/SendingDataTaskHelper;->isResponseValid()Z

    move-result v0

    return v0
.end method

.method public onRequestError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/cd;->c:Lcom/yandex/metrica/impl/ob/a8;

    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/cd;->l:J

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/a8;->c(J)V

    return-void
.end method

.method public onShouldNotExecute()V
    .locals 0

    return-void
.end method

.method public onSuccessfulTaskFinished()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cd;->e:Lcom/yandex/metrica/impl/ob/Fc;

    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/Fc;->a()V

    return-void
.end method

.method public onTaskAdded()V
    .locals 0

    return-void
.end method

.method public onTaskFinished()V
    .locals 0

    return-void
.end method

.method public onTaskRemoved()V
    .locals 0

    return-void
.end method

.method public onUnsuccessfulTaskFinished()V
    .locals 0

    return-void
.end method
