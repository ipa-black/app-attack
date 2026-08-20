.class public Lcom/bytedance/adsdk/lottie/Tgh;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static CJ:Z = true

.field private static volatile Gm:Lcom/bytedance/adsdk/lottie/CJ/Gm; = null

.field public static Qhi:Z = false

.field private static ROR:I = 0x0

.field private static Sf:I = 0x0

.field private static Tgh:[J = null

.field private static WAv:Lcom/bytedance/adsdk/lottie/CJ/Sf; = null

.field private static ac:Z = true

.field private static cJ:Z = false

.field private static fl:[Ljava/lang/String;

.field private static hm:Lcom/bytedance/adsdk/lottie/CJ/hm;

.field private static volatile zc:Lcom/bytedance/adsdk/lottie/CJ/WAv;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static Qhi(Landroid/content/Context;)Lcom/bytedance/adsdk/lottie/CJ/Gm;
    .locals 3

    .line 101
    sget-object v0, Lcom/bytedance/adsdk/lottie/Tgh;->Gm:Lcom/bytedance/adsdk/lottie/CJ/Gm;

    if-nez v0, :cond_2

    .line 103
    const-class v0, Lcom/bytedance/adsdk/lottie/CJ/Gm;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-object v1, Lcom/bytedance/adsdk/lottie/Tgh;->Gm:Lcom/bytedance/adsdk/lottie/CJ/Gm;

    if-nez v1, :cond_1

    .line 106
    new-instance v1, Lcom/bytedance/adsdk/lottie/CJ/Gm;

    invoke-static {p0}, Lcom/bytedance/adsdk/lottie/Tgh;->cJ(Landroid/content/Context;)Lcom/bytedance/adsdk/lottie/CJ/WAv;

    move-result-object p0

    sget-object v2, Lcom/bytedance/adsdk/lottie/Tgh;->hm:Lcom/bytedance/adsdk/lottie/CJ/hm;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/adsdk/lottie/CJ/fl;

    invoke-direct {v2}, Lcom/bytedance/adsdk/lottie/CJ/fl;-><init>()V

    :goto_0
    invoke-direct {v1, p0, v2}, Lcom/bytedance/adsdk/lottie/CJ/Gm;-><init>(Lcom/bytedance/adsdk/lottie/CJ/WAv;Lcom/bytedance/adsdk/lottie/CJ/hm;)V

    sput-object v1, Lcom/bytedance/adsdk/lottie/Tgh;->Gm:Lcom/bytedance/adsdk/lottie/CJ/Gm;

    .line 108
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static Qhi(Ljava/lang/String;)V
    .locals 4

    .line 58
    sget-boolean v0, Lcom/bytedance/adsdk/lottie/Tgh;->cJ:Z

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    sget v0, Lcom/bytedance/adsdk/lottie/Tgh;->ROR:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    .line 62
    sget p0, Lcom/bytedance/adsdk/lottie/Tgh;->Sf:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/bytedance/adsdk/lottie/Tgh;->Sf:I

    return-void

    .line 65
    :cond_1
    sget-object v1, Lcom/bytedance/adsdk/lottie/Tgh;->fl:[Ljava/lang/String;

    aput-object p0, v1, v0

    .line 66
    sget-object v1, Lcom/bytedance/adsdk/lottie/Tgh;->Tgh:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 67
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 68
    sget p0, Lcom/bytedance/adsdk/lottie/Tgh;->ROR:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/bytedance/adsdk/lottie/Tgh;->ROR:I

    return-void
.end method

.method public static Qhi()Z
    .locals 1

    .line 140
    sget-boolean v0, Lcom/bytedance/adsdk/lottie/Tgh;->CJ:Z

    return v0
.end method

.method public static cJ(Ljava/lang/String;)F
    .locals 4

    .line 72
    sget v0, Lcom/bytedance/adsdk/lottie/Tgh;->Sf:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 73
    sput v0, Lcom/bytedance/adsdk/lottie/Tgh;->Sf:I

    return v1

    .line 76
    :cond_0
    sget-boolean v0, Lcom/bytedance/adsdk/lottie/Tgh;->cJ:Z

    if-nez v0, :cond_1

    return v1

    .line 79
    :cond_1
    sget v0, Lcom/bytedance/adsdk/lottie/Tgh;->ROR:I

    add-int/lit8 v0, v0, -0x1

    .line 80
    sput v0, Lcom/bytedance/adsdk/lottie/Tgh;->ROR:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 83
    sget-object v1, Lcom/bytedance/adsdk/lottie/Tgh;->fl:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 88
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object p0, Lcom/bytedance/adsdk/lottie/Tgh;->Tgh:[J

    sget v2, Lcom/bytedance/adsdk/lottie/Tgh;->ROR:I

    aget-wide v2, p0, v2

    sub-long/2addr v0, v2

    long-to-float p0, v0

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p0, v0

    return p0

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unbalanced trace call "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ". Expected "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Lcom/bytedance/adsdk/lottie/Tgh;->fl:[Ljava/lang/String;

    sget v2, Lcom/bytedance/adsdk/lottie/Tgh;->ROR:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t end trace section. There are none."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cJ(Landroid/content/Context;)Lcom/bytedance/adsdk/lottie/CJ/WAv;
    .locals 3

    .line 115
    sget-boolean v0, Lcom/bytedance/adsdk/lottie/Tgh;->ac:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 119
    sget-object v0, Lcom/bytedance/adsdk/lottie/Tgh;->zc:Lcom/bytedance/adsdk/lottie/CJ/WAv;

    if-nez v0, :cond_3

    .line 121
    const-class v0, Lcom/bytedance/adsdk/lottie/CJ/WAv;

    monitor-enter v0

    .line 122
    :try_start_0
    sget-object v1, Lcom/bytedance/adsdk/lottie/Tgh;->zc:Lcom/bytedance/adsdk/lottie/CJ/WAv;

    if-nez v1, :cond_2

    .line 124
    new-instance v1, Lcom/bytedance/adsdk/lottie/CJ/WAv;

    sget-object v2, Lcom/bytedance/adsdk/lottie/Tgh;->WAv:Lcom/bytedance/adsdk/lottie/CJ/Sf;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/bytedance/adsdk/lottie/Tgh$1;

    invoke-direct {v2, p0}, Lcom/bytedance/adsdk/lottie/Tgh$1;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {v1, v2}, Lcom/bytedance/adsdk/lottie/CJ/WAv;-><init>(Lcom/bytedance/adsdk/lottie/CJ/Sf;)V

    sput-object v1, Lcom/bytedance/adsdk/lottie/Tgh;->zc:Lcom/bytedance/adsdk/lottie/CJ/WAv;

    .line 130
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    :goto_1
    return-object v0
.end method
