.class Lcom/appsgeyser/sdk/InternalEntryPoint$7;
.super Ljava/lang/Object;
.source "InternalEntryPoint.java"

# interfaces
.implements Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/InternalEntryPoint;->getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

.field final synthetic val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 511
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$7;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$7;->val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$7;->val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isRateMyAppActive()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnRateMyAppEnableListener;->onRateMyAppEnableReceived(Z)V

    .line 515
    iget-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$7;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$402(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z

    return-void
.end method
