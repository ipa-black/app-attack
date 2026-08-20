.class public Lcom/bytedance/sdk/openadsdk/CJ/tP;
.super Ljava/lang/Object;
.source "FeatureCaculateConfig.java"


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;


# instance fields
.field private ABk:Z

.field private CJ:Z

.field private Gm:Z

.field private ROR:[I

.field private Sf:[I

.field private Tgh:[I

.field private WAv:Z

.field private ac:Z

.field private cJ:Z

.field private fl:[I

.field private hm:[I

.field private hpZ:Z

.field private iMK:Z

.field private pA:I

.field private zc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->cJ()V

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac:Z

    return p1
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;[I)[I
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->zc:[I

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;I)I
    .locals 0

    .line 8
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->pA:I

    return p1
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/CJ/tP;
    .locals 2

    .line 32
    sget-object v0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/ac;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/bytedance/sdk/openadsdk/CJ/tP;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/CJ/tP;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    .line 37
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi:Lcom/bytedance/sdk/openadsdk/CJ/tP;

    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->iMK:Z

    return p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->iMK:Z

    return p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Qhi([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private Qhi([Ljava/lang/String;)Z
    .locals 4

    .line 82
    array-length v0, p1

    const/4 v1, 0x2

    const-string v2, "session"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    aget-object p1, p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 84
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-ne v0, v3, :cond_1

    .line 85
    aget-object p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/CJ/tP;[I)[I
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->fl:[I

    return-object p1
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Gm:Z

    return p1
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ABk:Z

    return p1
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->WAv:Z

    return p1
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/CJ/tP;[I)[I
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->hm:[I

    return-object p1
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->cJ:Z

    return p1
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/CJ/tP;[I)[I
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ROR:[I

    return-object p1
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)[I
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac([Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private ac([Ljava/lang/String;)[I
    .locals 7

    .line 100
    array-length v0, p1

    new-array v1, v0, [I

    .line 102
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, p1, v4

    .line 104
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :catch_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eq v5, v0, :cond_2

    .line 116
    new-array p1, v5, [I

    .line 117
    invoke-static {v1, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_2
    return-object v1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->hpZ:Z

    return p1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;[I)[I
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Tgh:[I

    return-object p1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/CJ/tP;[Ljava/lang/String;)[I
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->cJ([Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private cJ([Ljava/lang/String;)[I
    .locals 2

    .line 92
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 93
    aget-object p1, p1, v1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac([Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 95
    :cond_0
    new-array p1, v1, [I

    return-object p1
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/CJ/tP;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->CJ:Z

    return p1
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/CJ/tP;[I)[I
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Sf:[I

    return-object p1
.end method


# virtual methods
.method public ABk()[I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->hm:[I

    return-object v0
.end method

.method public CJ()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->pA:I

    return v0
.end method

.method public Gm()[I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ROR:[I

    return-object v0
.end method

.method public HzH()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ABk:Z

    return v0
.end method

.method public ROR()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->ac:Z

    return v0
.end method

.method public Sf()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->CJ:Z

    return v0
.end method

.method public Tgh()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->cJ:Z

    return v0
.end method

.method public WAv()[I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Tgh:[I

    return-object v0
.end method

.method public ac()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->iMK:Z

    return v0
.end method

.method public cJ()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->cJ()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/CJ/tP$1;-><init>(Lcom/bytedance/sdk/openadsdk/CJ/tP;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fl()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->hpZ:Z

    return v0
.end method

.method public hm()[I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->fl:[I

    return-object v0
.end method

.method public hpZ()[I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->zc:[I

    return-object v0
.end method

.method public iMK()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->WAv:Z

    return v0
.end method

.method public pA()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Gm:Z

    return v0
.end method

.method public zc()[I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/CJ/tP;->Sf:[I

    return-object v0
.end method
