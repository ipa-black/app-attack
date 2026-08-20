.class Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;
.super Ljava/lang/Object;
.source "PurchaseController.java"

# interfaces
.implements Lcom/appsgeyser/sdk/inapp/billing/BillingAdapter$BillingEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/inapp/PurchaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BillingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;


# direct methods
.method private constructor <init>(Lcom/appsgeyser/sdk/inapp/PurchaseController;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsgeyser/sdk/inapp/PurchaseController;Lcom/appsgeyser/sdk/inapp/PurchaseController$1;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;-><init>(Lcom/appsgeyser/sdk/inapp/PurchaseController;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPurchaseSuccess$0$com-appsgeyser-sdk-inapp-PurchaseController$BillingListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$400(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$900(Lcom/appsgeyser/sdk/inapp/PurchaseController;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$400(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->getInappKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->getInstance()Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->saveDisableAdsPurchaseFlag(Z)V

    .line 252
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$500(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v3, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    iget-object v4, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v4}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$400(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    move-result-object v4

    invoke-direct {v3, v1, v4, v2, v2}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;-><init>(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;ZZ)V

    invoke-virtual {v0, v3}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$100(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$900(Lcom/appsgeyser/sdk/inapp/PurchaseController;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$100(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->getInappKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$200(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v3, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    iget-object v4, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v4}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$100(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    move-result-object v4

    invoke-direct {v3, v1, v4, v2, v2}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;-><init>(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;ZZ)V

    invoke-virtual {v0, v3}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$800(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;->onSuccessPurchase()V

    .line 258
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0, p2, p3, p1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$1000(Lcom/appsgeyser/sdk/inapp/PurchaseController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionError()V
    .locals 3

    .line 276
    const-string v0, "PurchaseController"

    const-string v1, "Connection to Google Billing failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$200(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$600(Lcom/appsgeyser/sdk/inapp/PurchaseController;Lrx/subjects/BehaviorSubject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$200(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v2, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$BillingErrorStatus;

    invoke-direct {v2, v1}, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$BillingErrorStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$500(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$600(Lcom/appsgeyser/sdk/inapp/PurchaseController;Lrx/subjects/BehaviorSubject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$500(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v2, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$BillingErrorStatus;

    invoke-direct {v2, v1}, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$BillingErrorStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onProductReceiveError(Ljava/lang/String;)V
    .locals 5

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Receiving products error, message: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PurchaseController"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$200(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$600(Lcom/appsgeyser/sdk/inapp/PurchaseController;Lrx/subjects/BehaviorSubject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$200(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v3, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$BillingErrorStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$BillingErrorStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$500(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$600(Lcom/appsgeyser/sdk/inapp/PurchaseController;Lrx/subjects/BehaviorSubject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$500(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v3, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$BillingErrorStatus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/appsgeyser/sdk/inapp/models/statuses/ErrorStatus$BillingErrorStatus;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onProductReceiveSuccess(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appsgeyser/sdk/inapp/models/BillingProduct;",
            ">;)V"
        }
    .end annotation

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;

    .line 207
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v2}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$100(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;->getInappKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->isPurchased()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$200(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v1

    new-instance v4, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    iget-object v5, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v5}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$100(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    move-result-object v5

    invoke-direct {v4, v0, v5, v3, v3}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;-><init>(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;ZZ)V

    invoke-virtual {v1, v4}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$200(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v1

    new-instance v4, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    iget-object v5, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v5}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$100(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/AccessData;

    move-result-object v5

    invoke-direct {v4, v0, v5, v3, v2}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;-><init>(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;ZZ)V

    invoke-virtual {v1, v4}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 215
    :goto_1
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    const-string v4, "inapp_access_products_loaded"

    invoke-static {v1, v4}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$300(Lcom/appsgeyser/sdk/inapp/PurchaseController;Ljava/lang/String;)V

    .line 218
    :cond_2
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v4}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$400(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;->getInappKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/appsgeyser/sdk/inapp/models/BillingProduct;->isPurchased()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$500(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v1

    new-instance v2, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    iget-object v4, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v4}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$400(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    move-result-object v4

    invoke-direct {v2, v0, v4, v3, v3}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;-><init>(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;ZZ)V

    invoke-virtual {v1, v2}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 222
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->getInstance()Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->saveDisableAdsPurchaseFlag(Z)V

    goto :goto_2

    .line 225
    :cond_3
    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$500(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lrx/subjects/BehaviorSubject;

    move-result-object v1

    new-instance v4, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;

    iget-object v5, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v5}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$400(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/models/configdata/DisableAdsData;

    move-result-object v5

    invoke-direct {v4, v0, v5, v3, v2}, Lcom/appsgeyser/sdk/inapp/models/statuses/SuccessStatus;-><init>(Lcom/appsgeyser/sdk/inapp/models/BillingProduct;Lcom/appsgeyser/sdk/inapp/models/configdata/ConfigInappData;ZZ)V

    invoke-virtual {v1, v4}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 226
    invoke-static {}, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->getInstance()Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/appsgeyser/sdk/inapp/utils/DisableAdsSharedPrefs;->saveDisableAdsPurchaseFlag(Z)V

    .line 228
    :goto_2
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    const-string v1, "inapp_disable_ads_products_loaded"

    invoke-static {v0, v1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$300(Lcom/appsgeyser/sdk/inapp/PurchaseController;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public onPurchaseError(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Purchase error, code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PurchaseController"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v0}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$800(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/appsgeyser/sdk/inapp/PurchaseController$PurchaseListener;->onErrorPurchase(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPurchaseSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseController onPurchaseSuccess inappKey = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PurchaseController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;->this$0:Lcom/appsgeyser/sdk/inapp/PurchaseController;

    invoke-static {v1}, Lcom/appsgeyser/sdk/inapp/PurchaseController;->access$700(Lcom/appsgeyser/sdk/inapp/PurchaseController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener$$ExternalSyntheticLambda0;-><init>(Lcom/appsgeyser/sdk/inapp/PurchaseController$BillingListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
