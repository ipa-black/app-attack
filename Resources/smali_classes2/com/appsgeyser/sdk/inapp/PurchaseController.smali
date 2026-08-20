.class public Lcom/appsgeyser/sdk/inapp/PurchaseController;
.super Ljava/lang/Object;
.source "PurchaseController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;,
        Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/appsgeyser/sdk/inapp/PurchaseController;


# instance fields
.field private final KEY_PRICE_CURRENCY:Ljava/lang/String;

.field private final KEY_PRICE_VALUE:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

.field private final accessStatusSubject:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Lcom/appsgeyser/sdk/inapp/models/statuses/Status;",
            ">;"
        }
    .end annotation
.end field

.field private billingAdapter:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

.field private context:Landroid/content/Context;

.field private disableAdsData:Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

.field private final disableAdsStatusSubject:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject<",
            "Lcom/appsgeyser/sdk/inapp/models/statuses/Status;",
            ">;"
        }
    .end annotation
.end field

.field private isAccessDataReceivingComplete:Z

.field private isDisableAdsDataReceivingComplete:Z

.field private purchaseListener:Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;

.field private wid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "PurchaseController"

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->LOG_TAG:Ljava/lang/String;

    .line 38
    const-string v0, "value"

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->KEY_PRICE_VALUE:Ljava/lang/String;

    .line 39
    const-string v0, "currency"

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->KEY_PRICE_CURRENCY:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isAccessDataReceivingComplete:Z

    .line 42
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isDisableAdsDataReceivingComplete:Z

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    .line 45
    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsData:Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    .line 47
    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->purchaseListener:Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;

    .line 53
    new-instance v0, Lcom/appsgeyser/sdk/inapp/models/statuses/LoadingStatus;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/inapp/models/statuses/LoadingStatus;-><init>()V

    invoke-static {v0}, Lrx/subjects/BehaviorSubject;->create(Ljava/lang/Object;)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessStatusSubject:Lrx/subjects/BehaviorSubject;

    .line 54
    new-instance v0, Lcom/appsgeyser/sdk/inapp/models/statuses/LoadingStatus;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/inapp/models/statuses/LoadingStatus;-><init>()V

    invoke-static {v0}, Lrx/subjects/BehaviorSubject;->create(Ljava/lang/Object;)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsStatusSubject:Lrx/subjects/BehaviorSubject;

    return-void
.end method

.method static synthetic access$100(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/appsgeyser/sdk/inapp/PurchaseController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->sendSuccessPurchaseStatRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessStatusSubject:Lrx/subjects/BehaviorSubject;

    return-object p0
.end method

.method static synthetic access$300(Lcom/appsgeyser/sdk/inapp/PurchaseController;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->sendSuccessProductLoadedStatRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsData:Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsStatusSubject:Lrx/subjects/BehaviorSubject;

    return-object p0
.end method

.method static synthetic access$600(Lcom/appsgeyser/sdk/inapp/PurchaseController;Lrx/subjects/BehaviorSubject;)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isComplete(Lrx/subjects/BehaviorSubject;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->purchaseListener:Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/appsgeyser/sdk/inapp/PurchaseController;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isInappKeyValid(Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/appsgeyser/sdk/inapp/PurchaseController;
    .locals 1

    .line 70
    sget-object v0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->instance:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->instance:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    .line 72
    :cond_0
    sget-object v0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->instance:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    return-object v0
.end method

.method private initBilling()V
    .locals 7

    .line 142
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isDisableAdsDataReceivingComplete:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isAccessDataReceivingComplete:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 144
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    const/4 v2, 0x0

    const-string v3, "PurchaseController"

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 147
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    invoke-direct {p0, v1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isInappKeyValid(Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->getInappKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessStatusSubject:Lrx/subjects/BehaviorSubject;

    new-instance v5, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$ConfigErrorStatus;

    const-string v6, "Invalid access inapp key data"

    invoke-direct {v5, v6}, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$ConfigErrorStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 153
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessStatusSubject:Lrx/subjects/BehaviorSubject;

    new-instance v5, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    invoke-direct {v5, v4, v4, v2, v2}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;-><init>(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;ZZ)V

    invoke-virtual {v1, v5}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_3
    const-string v1, "Invalid config access data"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v5, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessStatusSubject:Lrx/subjects/BehaviorSubject;

    new-instance v6, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$ConfigErrorStatus;

    invoke-direct {v6, v1}, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$ConfigErrorStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsData:Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    if-eqz v1, :cond_6

    .line 165
    invoke-virtual {v1}, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 168
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsData:Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    invoke-direct {p0, v1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isInappKeyValid(Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 169
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsData:Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    invoke-virtual {v1}, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->getInappKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_4
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsStatusSubject:Lrx/subjects/BehaviorSubject;

    new-instance v2, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$ConfigErrorStatus;

    const-string v5, "Invalid disable ads inapp key data"

    invoke-direct {v2, v5}, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$ConfigErrorStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 172
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    :cond_5
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsStatusSubject:Lrx/subjects/BehaviorSubject;

    new-instance v3, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    invoke-direct {v3, v4, v4, v2, v2}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;-><init>(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;ZZ)V

    invoke-virtual {v1, v3}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 179
    :cond_6
    const-string v1, "Invalid config disableAds data"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsStatusSubject:Lrx/subjects/BehaviorSubject;

    new-instance v3, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$ConfigErrorStatus;

    invoke-direct {v3, v1}, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$ConfigErrorStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 183
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    return-void

    .line 185
    :cond_7
    new-instance v1, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    iget-object v2, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->context:Landroid/content/Context;

    new-instance v3, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;

    invoke-direct {v3, p0, v4}, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;-><init>(Lcom/appsgeyser/sdk/inapp/PurchaseController;Lcom/appsgeyser/sdk/inapp/PurchaseController$1;)V

    const-string v4, "inapp"

    invoke-direct {v1, v2, v0, v4, v3}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;)V

    iput-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->billingAdapter:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    :cond_8
    :goto_2
    return-void
.end method

.method private isComplete(Lrx/subjects/BehaviorSubject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/BehaviorSubject<",
            "Lcom/appsgeyser/sdk/inapp/models/statuses/Status;",
            ">;)Z"
        }
    .end annotation

    .line 197
    invoke-virtual {p1}, Lrx/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    return p1
.end method

.method private isInappKeyValid(Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 193
    invoke-interface {p1}, Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;->getInappKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;->getInappKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private purchase(Landroid/app/Activity;Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)V
    .locals 0

    .line 106
    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->purchaseListener:Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;

    .line 107
    iget-object p2, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->billingAdapter:Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;

    invoke-interface {p3}, Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;->getInappKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter;->purchase(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private registerAccessDataListener()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->context:Landroid/content/Context;

    new-instance v1, Lcom/appsgeyser/sdk/inapp/PurchaseController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/inapp/PurchaseController$$ExternalSyntheticLambda1;-><init>(Lcom/appsgeyser/sdk/inapp/PurchaseController;)V

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isAccessDataEnable(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnAccessDataEnableListener;)V

    return-void
.end method

.method private registerDisableAdsDataListener()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->context:Landroid/content/Context;

    new-instance v1, Lcom/appsgeyser/sdk/inapp/PurchaseController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/inapp/PurchaseController$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/inapp/PurchaseController;)V

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/AppsgeyserSDK;->isDisableAdsDataEnable(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;)V

    return-void
.end method

.method private sendSuccessProductLoadedStatRequest(Ljava/lang/String;)V
    .locals 3

    .line 315
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 316
    const-string v1, "ServerResponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {v0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object v0

    .line 319
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getStatUrls()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/appsgeyser/sdk/server/StatController;->init(Ljava/util/HashMap;)V

    .line 320
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendSuccessPurchaseStatRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    invoke-direct {p0, v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isInappKeyValid(Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)Z

    move-result v0

    const-string v1, "PurchaseController"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->getInappKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string p3, "PurchaseController send Access events"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "inapp_access_new_purchase"

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsData:Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    invoke-direct {p0, v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isInappKeyValid(Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsData:Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->getInappKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 295
    const-string p3, "PurchaseController send Disable Ads events"

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "inapp_disable_ads_new_purchase"

    .line 301
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 302
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string p1, "currency"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p2, v1}, Lcom/appsgeyser/sdk/server/StatController;->sendRequestAsyncByKey(Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;Z)V

    return-void

    .line 297
    :cond_1
    const-string p1, "PurchaseController events not sended"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->wid:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->registerAccessDataListener()V

    .line 65
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->registerDisableAdsDataListener()V

    return-void
.end method

.method synthetic lambda$registerAccessDataListener$0$com-appsgeyser-sdk-inapp-PurchaseController(Ljava/lang/String;)V
    .locals 3

    .line 113
    const-string v0, "PurchaseController"

    if-eqz p1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->wid:Ljava/lang/String;

    const-string v2, "InAppAccess"

    invoke-static {p1, v1, v2}, Lcom/appsgeyser/sdk/inapp/utils/Decoder;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    goto :goto_0

    .line 117
    :cond_0
    const-string p1, "Error to catch access data from config: no data"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "accessData = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isAccessDataReceivingComplete:Z

    .line 121
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->initBilling()V

    return-void
.end method

.method synthetic lambda$registerDisableAdsDataListener$1$com-appsgeyser-sdk-inapp-PurchaseController(Ljava/lang/String;)V
    .locals 3

    .line 128
    const-string v0, "PurchaseController"

    if-eqz p1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->wid:Ljava/lang/String;

    const-string v2, "DisableAds"

    invoke-static {p1, v1, v2}, Lcom/appsgeyser/sdk/inapp/utils/Decoder;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsData:Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    goto :goto_0

    .line 132
    :cond_0
    const-string p1, "Error to catch disable ads data from config: no data"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "disableAdsData = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsData:Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isDisableAdsDataReceivingComplete:Z

    .line 136
    invoke-direct {p0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->initBilling()V

    return-void
.end method

.method public purchaseAccess(Landroid/app/Activity;Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    invoke-direct {p0, v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isInappKeyValid(Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessData:Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    invoke-direct {p0, p1, p2, v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->purchase(Landroid/app/Activity;Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)V

    goto :goto_0

    .line 90
    :cond_0
    const-string p1, "PurchaseController"

    const-string v0, "Invalid access data"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-interface {p2, v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;->onErrorPurchase(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public purchaseDisableAds(Landroid/app/Activity;Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsData:Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    invoke-direct {p0, v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->isInappKeyValid(Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsData:Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    invoke-direct {p0, p1, p2, v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->purchase(Landroid/app/Activity;Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)V

    goto :goto_0

    .line 100
    :cond_0
    const-string p1, "PurchaseController"

    const-string v0, "Invalid disable ads data"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface {p2, v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;->onErrorPurchase(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public subscribeAccessStatus(Lrx/functions/Action1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-",
            "Lcom/appsgeyser/sdk/inapp/models/statuses/Status;",
            ">;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->accessStatusSubject:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0, p1}, Lrx/subjects/BehaviorSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public subscribeDisableAdsStatus(Lrx/functions/Action1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-",
            "Lcom/appsgeyser/sdk/inapp/models/statuses/Status;",
            ">;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController;->disableAdsStatusSubject:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v0, p1}, Lrx/subjects/BehaviorSubject;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method
