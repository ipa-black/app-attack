.class Lcom/appsgeyser/sdk/InternalEntryPoint$6;
.super Ljava/lang/Object;
.source "InternalEntryPoint.java"

# interfaces
.implements Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/InternalEntryPoint;->getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

.field final synthetic val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 482
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$6;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$6;->val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$6;->val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAppsgeyserDisableAds()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnDisableAdsDataEnableListener;->onDisableAdsDataEnable(Ljava/lang/String;)V

    .line 486
    iget-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$6;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$802(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z

    return-void
.end method
