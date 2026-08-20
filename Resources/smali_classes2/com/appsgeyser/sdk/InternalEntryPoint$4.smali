.class Lcom/appsgeyser/sdk/InternalEntryPoint$4;
.super Ljava/lang/Object;
.source "InternalEntryPoint.java"

# interfaces
.implements Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/InternalEntryPoint;->getNewConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

.field final synthetic val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$4;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$4;->val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$4;->val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInappUpdateEnabled()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/appsgeyser/sdk/AppsgeyserSDK$OnInAppUpdateEnableListener;->onInAppUpdateEnable(Z)V

    .line 427
    iget-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$4;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$202(Lcom/appsgeyser/sdk/InternalEntryPoint;Z)Z

    return-void
.end method
