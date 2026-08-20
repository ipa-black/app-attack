.class public Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;
.super Ljava/lang/Object;
.source "RateAppManager.java"


# static fields
.field private static instance:Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private currentActivity:Landroid/app/Activity;

.field private isPause:Z

.field private final sharedPrefs:Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;


# direct methods
.method public static synthetic $r8$lambda$oebl5HSpOrKPNziNN1regi-Ozfk(Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->launchRateMyAppProcess()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "RateAppManager"

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->isPause:Z

    .line 30
    new-instance v0, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;

    new-instance v1, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;)V

    invoke-direct {v0, p1, v1}, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;-><init>(Landroid/content/Context;Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter$OnEntriesListener;)V

    iput-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->sharedPrefs:Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;
    .locals 1

    .line 34
    sget-object v0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->instance:Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->instance:Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;

    .line 36
    :cond_0
    sget-object p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->instance:Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;

    return-object p0
.end method

.method private launchRateMyAppProcess()V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start launchRateMyAppProcess method, currentActivity == null => "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->currentActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RateAppManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->isPause:Z

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;)V

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isRateMyAppEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;)V

    :cond_1
    return-void
.end method

.method private rateApp(Landroid/app/Activity;)V
    .locals 3

    .line 69
    const-string v0, "RateAppManager"

    const-string v1, "Start rateApp() method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p1}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 72
    new-instance v2, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda3;-><init>(Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;Lcom/google/android/play/core/review/ReviewManager;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private sendAnalyticsEvent()V
    .locals 2

    .line 90
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    const-string v1, "rma_dialog_impressions"

    invoke-virtual {v0, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public increaseEntries()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->sharedPrefs:Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->increaseEntries()V

    return-void
.end method

.method synthetic lambda$launchRateMyAppProcess$0$com-appsgeyser-sdk-utils-RateApp-RateAppManager(Z)V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isRateMyAppIsEnable = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RateAppManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->currentActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->rateApp(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$rateApp$1$com-appsgeyser-sdk-utils-RateApp-RateAppManager(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->sendAnalyticsEvent()V

    .line 79
    const-string p1, "RateAppManager"

    const-string v0, "App evaluation process is completed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$rateApp$2$com-appsgeyser-sdk-utils-RateApp-RateAppManager(Lcom/google/android/play/core/review/ReviewManager;Landroid/app/Activity;Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 73
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "RateAppManager"

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "Success get rate app task"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/play/core/review/ReviewInfo;

    .line 76
    invoke-interface {p1, p2, p3}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 77
    new-instance p2, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager$$ExternalSyntheticLambda2;-><init>(Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 81
    iget-object p1, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->sharedPrefs:Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->setShownFlag(Z)V

    goto :goto_0

    .line 83
    :cond_0
    const-string p1, "Error while reviewManager requesting: "

    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 2

    .line 40
    const-string v0, "RateAppManager"

    const-string v1, "setCurrentActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object p1, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->currentActivity:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->isPause:Z

    .line 43
    iget-object p1, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->sharedPrefs:Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/utils/RateApp/SharedPrefsCounter;->checkNeedToShow()V

    return-void
.end method

.method public setPause()V
    .locals 2

    .line 51
    const-string v0, "RateAppManager"

    const-string v1, "setPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/RateAppManager;->isPause:Z

    return-void
.end method
