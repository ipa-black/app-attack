.class public final Lcom/appodeal/ads/adapters/bidmachine/b;
.super Ljava/lang/Object;
.source "BidMachineInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/adapters/bidmachine/b$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/appodeal/ads/adapters/bidmachine/b;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Z

.field public c:Z


# direct methods
.method public static synthetic $r8$lambda$Qq3PE6TKXRA_M9OgO79XHxuD6BI(Lcom/appodeal/ads/adapters/bidmachine/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/ads/adapters/bidmachine/b;->b()V

    return-void
.end method

.method public static synthetic $r8$lambda$o28tfmJsfSfH-8HiIWO7HXUcBDs(Lcom/appodeal/ads/adapters/bidmachine/b;Ljava/util/List;Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/adapters/bidmachine/b;->a(Ljava/util/List;Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/appodeal/ads/adapters/bidmachine/b;

    invoke-direct {v0}, Lcom/appodeal/ads/adapters/bidmachine/b;-><init>()V

    sput-object v0, Lcom/appodeal/ads/adapters/bidmachine/b;->d:Lcom/appodeal/ads/adapters/bidmachine/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->b:Z

    .line 11
    iput-boolean v0, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->c:Z

    return-void
.end method

.method public static a()Lcom/appodeal/ads/adapters/bidmachine/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/appodeal/ads/adapters/bidmachine/b;->d:Lcom/appodeal/ads/adapters/bidmachine/b;

    return-object v0
.end method

.method private synthetic a(Ljava/util/List;Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 3

    .line 73
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/adapters/bidmachine/b$a;

    .line 74
    iget-boolean v2, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->c:Z

    if-eqz v2, :cond_0

    .line 75
    invoke-interface {v1}, Lcom/appodeal/ads/adapters/bidmachine/b$a;->onInitializationFinished()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {v1, p2}, Lcom/appodeal/ads/adapters/bidmachine/b$a;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    goto :goto_0

    .line 80
    :cond_1
    const-class p2, Lcom/appodeal/ads/adapters/bidmachine/b;

    monitor-enter p2

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 82
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/adapters/bidmachine/b;->a(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    .line 46
    invoke-static {}, Lio/bidmachine/BidMachine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/adapters/bidmachine/b;->a(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    .line 50
    :cond_0
    const-string v0, "seller_id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->IncorrectAdunit:Lcom/appodeal/ads/networking/LoadingError;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/adapters/bidmachine/b;->a(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    .line 55
    :cond_1
    const-string v1, "endpoint"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 57
    invoke-static {v1}, Lio/bidmachine/BidMachine;->setEndpoint(Ljava/lang/String;)V

    .line 59
    :cond_2
    const-string v1, "mediation_config"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 61
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/bidmachine/BidMachine;->registerNetworks(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    :cond_3
    new-instance p2, Lcom/appodeal/ads/adapters/bidmachine/b$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/appodeal/ads/adapters/bidmachine/b$$ExternalSyntheticLambda0;-><init>(Lcom/appodeal/ads/adapters/bidmachine/b;)V

    invoke-static {p1, v0, p2}, Lio/bidmachine/BidMachine;->initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/appodeal/ads/AppodealStateParams;Lcom/appodeal/ads/adapters/bidmachine/b$a;)V
    .locals 3

    if-nez p2, :cond_0

    .line 2
    sget-object p1, Lcom/appodeal/ads/networking/LoadingError;->InternalError:Lcom/appodeal/ads/networking/LoadingError;

    invoke-interface {p4, p1}, Lcom/appodeal/ads/adapters/bidmachine/b$a;->onInitializationFailed(Lcom/appodeal/ads/networking/LoadingError;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/appodeal/ads/adapters/bidmachine/c;->a()Lcom/explorestack/iab/utils/LogListener;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidLog;->addLogListener(Lcom/explorestack/iab/utils/LogListener;)V

    .line 6
    invoke-static {}, Lcom/appodeal/ads/adapters/bidmachine/c;->a()Lcom/explorestack/iab/utils/LogListener;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/iab/vast/VastLog;->addLogListener(Lcom/explorestack/iab/utils/LogListener;)V

    .line 8
    invoke-interface {p3}, Lcom/appodeal/ads/AppodealStateParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/appodeal/ads/RestrictedData;->isUserInGdprScope()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lio/bidmachine/BidMachine;->setSubjectToGDPR(Ljava/lang/Boolean;)V

    .line 11
    invoke-interface {v0}, Lcom/appodeal/ads/RestrictedData;->isUserHasConsent()Z

    move-result v1

    .line 12
    invoke-interface {v0}, Lcom/appodeal/ads/RestrictedData;->getIabConsentString()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Lio/bidmachine/BidMachine;->setConsentConfig(ZLjava/lang/String;)V

    .line 16
    :cond_1
    invoke-interface {v0}, Lcom/appodeal/ads/RestrictedData;->isUserInCcpaScope()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    invoke-interface {v0}, Lcom/appodeal/ads/RestrictedData;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 19
    invoke-static {v1}, Lio/bidmachine/BidMachine;->setUSPrivacyString(Ljava/lang/String;)V

    .line 22
    :cond_2
    invoke-interface {v0}, Lcom/appodeal/ads/RestrictedData;->isUserAgeRestricted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lio/bidmachine/BidMachine;->setCoppa(Ljava/lang/Boolean;)V

    .line 24
    :cond_3
    invoke-interface {p3}, Lcom/appodeal/ads/AppodealStateParams;->getRestrictedData()Lcom/appodeal/ads/RestrictedData;

    move-result-object v0

    .line 25
    invoke-static {p1, p2, v0}, Lcom/appodeal/ads/adapters/bidmachine/c;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/appodeal/ads/RestrictedData;)Lio/bidmachine/TargetingParams;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lio/bidmachine/BidMachine;->setTargetingParams(Lio/bidmachine/TargetingParams;)V

    .line 27
    invoke-interface {p3}, Lcom/appodeal/ads/AppodealStateParams;->isTestMode()Z

    move-result v0

    invoke-static {v0}, Lio/bidmachine/BidMachine;->setLoggingEnabled(Z)V

    .line 28
    invoke-interface {p3}, Lcom/appodeal/ads/AppodealStateParams;->isTestMode()Z

    move-result p3

    invoke-static {p3}, Lio/bidmachine/BidMachine;->setTestMode(Z)V

    .line 30
    const-class p3, Lcom/appodeal/ads/adapters/bidmachine/b;

    monitor-enter p3

    .line 31
    :try_start_0
    iget-boolean v0, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->c:Z

    if-eqz v0, :cond_4

    .line 32
    invoke-interface {p4}, Lcom/appodeal/ads/adapters/bidmachine/b$a;->onInitializationFinished()V

    goto :goto_0

    .line 34
    :cond_4
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->a:Ljava/util/ArrayList;

    .line 37
    :cond_5
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :goto_0
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-boolean p3, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->b:Z

    if-eqz p3, :cond_6

    return-void

    :cond_6
    const/4 p3, 0x1

    .line 43
    iput-boolean p3, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->b:Z

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/adapters/bidmachine/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void

    :catchall_0
    move-exception p1

    .line 45
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/appodeal/ads/networking/LoadingError;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 64
    :goto_0
    iput-boolean v1, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->c:Z

    .line 65
    iput-boolean v0, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->b:Z

    .line 66
    iget-object v0, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 68
    const-class v0, Lcom/appodeal/ads/adapters/bidmachine/b;

    monitor-enter v0

    .line 69
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/appodeal/ads/adapters/bidmachine/b;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/appodeal/ads/adapters/bidmachine/b$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Lcom/appodeal/ads/adapters/bidmachine/b$$ExternalSyntheticLambda1;-><init>(Lcom/appodeal/ads/adapters/bidmachine/b;Ljava/util/List;Lcom/appodeal/ads/networking/LoadingError;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 72
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return-void
.end method
