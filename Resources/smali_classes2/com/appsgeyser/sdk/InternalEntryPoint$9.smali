.class Lcom/appsgeyser/sdk/InternalEntryPoint$9;
.super Ljava/lang/Object;
.source "InternalEntryPoint.java"

# interfaces
.implements Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/InternalEntryPoint;->checkIsOfferWallEnabled(Landroid/content/Context;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

.field final synthetic val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 598
    iput-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$9;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    iput-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$9;->val$listener:Lcom/appsgeyser/sdk/AppsgeyserSDK$OfferWallEnabledListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceIdParametersObtained(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$9;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {v0, p2}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$002(Lcom/appsgeyser/sdk/InternalEntryPoint;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    .line 602
    invoke-static {}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getInstance()Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v0

    new-instance v1, Lcom/appsgeyser/sdk/InternalEntryPoint$9$1;

    invoke-direct {v1, p0}, Lcom/appsgeyser/sdk/InternalEntryPoint$9$1;-><init>(Lcom/appsgeyser/sdk/InternalEntryPoint$9;)V

    .line 603
    invoke-virtual {v0, p1, p2, v1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V

    .line 609
    iget-object p1, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$9;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {p1}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$1300(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/ads/FullScreenBanner;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/InternalEntryPoint$9;->this$0:Lcom/appsgeyser/sdk/InternalEntryPoint;

    invoke-static {p2}, Lcom/appsgeyser/sdk/InternalEntryPoint;->access$000(Lcom/appsgeyser/sdk/InternalEntryPoint;)Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/ads/FullScreenBanner;->initWithDeviceIdParameters(Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V

    return-void
.end method
