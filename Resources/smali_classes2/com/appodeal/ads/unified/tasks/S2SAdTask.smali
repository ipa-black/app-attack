.class public Lcom/appodeal/ads/unified/tasks/S2SAdTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        "OutputType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final RESULT_FAIL:I = 0x0

.field private static final RESULT_SUCCESS:I = 0x1


# instance fields
.field public final callback:Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback<",
            "TOutputType;>;"
        }
    .end annotation
.end field

.field public final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final processor:Lcom/appodeal/ads/unified/tasks/AdResponseProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/tasks/AdResponseProcessor<",
            "TResponseType;>;"
        }
    .end annotation
.end field

.field private final processorCallback:Lcom/appodeal/ads/unified/tasks/AdParamsProcessorCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/tasks/AdParamsProcessorCallback<",
            "TResponseType;>;"
        }
    .end annotation
.end field

.field private final resolver:Lcom/appodeal/ads/unified/tasks/AdParamsResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/tasks/AdParamsResolver<",
            "TResponseType;TOutputType;>;"
        }
    .end annotation
.end field

.field private final resolverCallback:Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback<",
            "TOutputType;>;"
        }
    .end annotation
.end field

.field public final restrictedData:Lcom/appodeal/ads/RestrictedData;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/RestrictedData;Lcom/appodeal/ads/unified/tasks/AdResponseProcessor;Lcom/appodeal/ads/unified/tasks/AdParamsResolver;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/appodeal/ads/RestrictedData;",
            "Lcom/appodeal/ads/unified/tasks/AdResponseProcessor<",
            "TResponseType;>;",
            "Lcom/appodeal/ads/unified/tasks/AdParamsResolver<",
            "TResponseType;TOutputType;>;",
            "Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback<",
            "TOutputType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$1;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/unified/tasks/S2SAdTask$1;-><init>(Lcom/appodeal/ads/unified/tasks/S2SAdTask;)V

    iput-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->processorCallback:Lcom/appodeal/ads/unified/tasks/AdParamsProcessorCallback;

    new-instance v0, Lcom/appodeal/ads/unified/tasks/S2SAdTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/appodeal/ads/unified/tasks/S2SAdTask$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/unified/tasks/S2SAdTask;)V

    iput-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->resolverCallback:Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;

    iput-object p1, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    iput-object p4, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->processor:Lcom/appodeal/ads/unified/tasks/AdResponseProcessor;

    iput-object p5, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->resolver:Lcom/appodeal/ads/unified/tasks/AdParamsResolver;

    iput-object p6, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->callback:Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;

    new-instance p2, Lcom/appodeal/ads/unified/tasks/S2SAdTask$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3, p6, p1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask$2;-><init>(Lcom/appodeal/ads/unified/tasks/S2SAdTask;Landroid/os/Looper;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/appodeal/ads/unified/tasks/S2SAdTask;)Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->resolverCallback:Lcom/appodeal/ads/unified/tasks/AdParamsResolverCallback;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/appodeal/ads/unified/tasks/S2SAdTask;)Lcom/appodeal/ads/unified/tasks/AdParamsResolver;
    .locals 0

    iget-object p0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->resolver:Lcom/appodeal/ads/unified/tasks/AdParamsResolver;

    return-object p0
.end method

.method public static requestMraid(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            "Lcom/appodeal/ads/unified/UnifiedAdCallback;",
            "Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback<",
            "Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;",
            ">;)V"
        }
    .end annotation

    new-instance v8, Lcom/appodeal/ads/unified/tasks/S2SAdTask$3;

    iget-object v3, p2, Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    new-instance v4, Lcom/appodeal/ads/unified/tasks/ExchangeAdResponseProcessor;

    invoke-direct {v4}, Lcom/appodeal/ads/unified/tasks/ExchangeAdResponseProcessor;-><init>()V

    new-instance v5, Lcom/appodeal/ads/unified/tasks/MraidParamsResolver;

    invoke-direct {v5, p2}, Lcom/appodeal/ads/unified/tasks/MraidParamsResolver;-><init>(Lcom/appodeal/ads/unified/mraid/UnifiedMraidNetworkParams;)V

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/appodeal/ads/unified/tasks/S2SAdTask$3;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/RestrictedData;Lcom/appodeal/ads/unified/tasks/AdResponseProcessor;Lcom/appodeal/ads/unified/tasks/AdParamsResolver;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V

    invoke-virtual {v8}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->start()V

    return-void
.end method

.method public static requestNast(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/RestrictedData;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/appodeal/ads/RestrictedData;",
            "Lcom/appodeal/ads/unified/UnifiedAdCallback;",
            "Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v8, Lcom/appodeal/ads/unified/tasks/S2SAdTask$5;

    new-instance v4, Lcom/appodeal/ads/unified/tasks/ExchangeAdResponseProcessor;

    invoke-direct {v4}, Lcom/appodeal/ads/unified/tasks/ExchangeAdResponseProcessor;-><init>()V

    new-instance v5, Lcom/appodeal/ads/unified/tasks/NastParamsResolver;

    invoke-direct {v5}, Lcom/appodeal/ads/unified/tasks/NastParamsResolver;-><init>()V

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/appodeal/ads/unified/tasks/S2SAdTask$5;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/RestrictedData;Lcom/appodeal/ads/unified/tasks/AdResponseProcessor;Lcom/appodeal/ads/unified/tasks/AdParamsResolver;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V

    invoke-virtual {v8}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->start()V

    return-void
.end method

.method public static requestVast(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;Lcom/appodeal/ads/unified/UnifiedAdCallback;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;",
            "Lcom/appodeal/ads/unified/UnifiedAdCallback;",
            "Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback<",
            "Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;",
            ">;)V"
        }
    .end annotation

    new-instance v8, Lcom/appodeal/ads/unified/tasks/S2SAdTask$4;

    iget-object v3, p2, Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    new-instance v4, Lcom/appodeal/ads/unified/tasks/ExchangeAdResponseProcessor;

    invoke-direct {v4}, Lcom/appodeal/ads/unified/tasks/ExchangeAdResponseProcessor;-><init>()V

    new-instance v5, Lcom/appodeal/ads/unified/tasks/VastParamsResolver;

    invoke-direct {v5, p2}, Lcom/appodeal/ads/unified/tasks/VastParamsResolver;-><init>(Lcom/appodeal/ads/unified/vast/UnifiedVastNetworkParams;)V

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/appodeal/ads/unified/tasks/S2SAdTask$4;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/ads/RestrictedData;Lcom/appodeal/ads/unified/tasks/AdResponseProcessor;Lcom/appodeal/ads/unified/tasks/AdParamsResolver;Lcom/appodeal/ads/unified/tasks/S2SAdTask$Callback;Lcom/appodeal/ads/unified/UnifiedAdCallback;)V

    invoke-virtual {v8}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->start()V

    return-void
.end method


# virtual methods
.method public final notifyFail(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifySuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutputType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public obtainRequestUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onParamsProcessSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseType;)V"
        }
    .end annotation

    return-void
.end method

.method public prepareUrlConnection(Landroid/content/Context;Ljava/net/HttpURLConnection;)V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->restrictedData:Lcom/appodeal/ads/RestrictedData;

    invoke-interface {v0, p1}, Lcom/appodeal/ads/RestrictedData;->getHttpAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "User-Agent"

    invoke-virtual {p2, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processServerResult(Ljava/net/URLConnection;)V
    .locals 2

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/n5;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->processServerResult(Ljava/net/URLConnection;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->NoFill:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->notifyFail(Lcom/appodeal/ads/networking/LoadingError;)V

    :goto_1
    return-void
.end method

.method public processServerResult(Ljava/net/URLConnection;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->processor:Lcom/appodeal/ads/unified/tasks/AdResponseProcessor;

    iget-object v1, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->processorCallback:Lcom/appodeal/ads/unified/tasks/AdParamsProcessorCallback;

    invoke-interface {v0, p1, p2, v1}, Lcom/appodeal/ads/unified/tasks/AdResponseProcessor;->processResponse(Ljava/net/URLConnection;Ljava/lang/String;Lcom/appodeal/ads/unified/tasks/AdParamsProcessorCallback;)V

    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->url:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->obtainRequestUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p0, v1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->notifyFail(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x4e20

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->context:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->prepareUrlConnection(Landroid/content/Context;Ljava/net/HttpURLConnection;)V

    invoke-virtual {p0, v1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->processServerResult(Ljava/net/URLConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p0, v1}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->notifyFail(Lcom/appodeal/ads/networking/LoadingError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v1

    :cond_4
    :goto_3
    sget-object v0, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/unified/tasks/S2SAdTask;->notifyFail(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public start()V
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/s;->e:Lcom/appodeal/ads/utils/s;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/utils/s;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
