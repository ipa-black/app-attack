.class Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;
.super Ljava/lang/Object;
.source "DynamicLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Qhi"
.end annotation


# instance fields
.field Qhi:F

.field ac:Z

.field cJ:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;
    .locals 3

    .line 485
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;-><init>()V

    if-eqz p0, :cond_0

    .line 487
    const-string v1, "width"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;->Qhi:F

    .line 488
    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;->cJ:F

    .line 489
    const-string v1, "isLandscape"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/Sf$Qhi;->ac:Z

    :cond_0
    return-object v0
.end method
