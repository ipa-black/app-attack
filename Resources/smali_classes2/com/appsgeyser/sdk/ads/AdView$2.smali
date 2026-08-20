.class Lcom/appsgeyser/sdk/ads/AdView$2;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lcom/appsgeyser/sdk/deviceidparser/IDeviceIdParserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/ads/AdView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/ads/AdView;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/ads/AdView;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/appsgeyser/sdk/ads/AdView$2;->this$0:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceIdParametersObtained(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/appsgeyser/sdk/ads/AdView$2;->this$0:Lcom/appsgeyser/sdk/ads/AdView;

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/ads/AdView;->access$100(Lcom/appsgeyser/sdk/ads/AdView;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;)V

    return-void
.end method
