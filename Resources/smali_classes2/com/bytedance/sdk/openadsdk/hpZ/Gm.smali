.class public Lcom/bytedance/sdk/openadsdk/hpZ/Gm;
.super Ljava/lang/Object;
.source "SensorHub.java"


# static fields
.field protected static final CJ:[F

.field public static Qhi:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;",
            ">;"
        }
    .end annotation
.end field

.field protected static final ac:[F

.field protected static final cJ:[F

.field protected static final fl:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 21
    new-array v1, v0, [F

    sput-object v1, Lcom/bytedance/sdk/openadsdk/hpZ/Gm;->cJ:[F

    .line 22
    new-array v1, v0, [F

    sput-object v1, Lcom/bytedance/sdk/openadsdk/hpZ/Gm;->ac:[F

    const/16 v1, 0x9

    .line 24
    new-array v1, v1, [F

    sput-object v1, Lcom/bytedance/sdk/openadsdk/hpZ/Gm;->CJ:[F

    .line 25
    new-array v0, v0, [F

    sput-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/Gm;->fl:[F

    return-void
.end method

.method public static CJ(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    :try_start_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/hpZ/Gm;->Qhi:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    .line 96
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 103
    const-string p1, "SensorHub"

    const-string p2, "startListenRotationVector err"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static Qhi(Landroid/content/Context;J)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 115
    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 116
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public static Qhi(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V
    .locals 0

    return-void
.end method

.method public static Qhi(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    :try_start_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/hpZ/Gm;->Qhi:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    .line 48
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 54
    const-string p1, "SensorHub"

    const-string p2, "startListenAccelerometer error"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;)V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/Gm;->Qhi:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static ac(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    :try_start_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/hpZ/Gm;->Qhi:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    .line 80
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 86
    const-string p1, "SensorHub"

    const-string p2, "startListenLinearAcceleration error"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static cJ(Landroid/content/Context;Landroid/hardware/SensorEventListener;I)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    :try_start_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/hpZ/Gm;->Qhi:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    .line 64
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 70
    const-string p1, "SensorHub"

    const-string p2, "startListenGyroscope error"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method
