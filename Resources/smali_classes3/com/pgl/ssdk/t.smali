.class public Lcom/pgl/ssdk/t;
.super Ljava/lang/Object;
.source "HardwareDetectForSec.java"


# static fields
.field public static a:I = -0x1

.field public static b:I = -0x1


# direct methods
.method public static a()I
    .locals 3

    .line 1
    sget v0, Lcom/pgl/ssdk/t;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/pgl/ssdk/v;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pgl/ssdk/L;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "camera_count"

    .line 6
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 8
    sput v0, Lcom/pgl/ssdk/t;->b:I

    return v0

    .line 12
    :cond_1
    new-instance v0, Lcom/pgl/ssdk/t$a;

    invoke-direct {v0}, Lcom/pgl/ssdk/t$a;-><init>()V

    invoke-static {v0}, Lcom/pgl/ssdk/c;->a(Ljava/lang/Runnable;)V

    return v1
.end method
