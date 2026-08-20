.class public Lcom/bytedance/sdk/component/fl/ac/Tgh;
.super Ljava/lang/Object;
.source "LoadConfig.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/iMK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;
    }
.end annotation


# instance fields
.field private CJ:Lcom/bytedance/sdk/component/fl/tP;

.field private Qhi:Lcom/bytedance/sdk/component/fl/ABk;

.field private ROR:Lcom/bytedance/sdk/component/fl/kYc;

.field private Sf:Lcom/bytedance/sdk/component/fl/cJ;

.field private Tgh:Lcom/bytedance/sdk/component/fl/ac;

.field private ac:Lcom/bytedance/sdk/component/fl/fl;

.field private cJ:Ljava/util/concurrent/ExecutorService;

.field private fl:Lcom/bytedance/sdk/component/fl/MQ;

.field private hm:Lcom/bytedance/sdk/component/fl/EBS;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->Qhi(Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;)Lcom/bytedance/sdk/component/fl/ABk;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->Qhi:Lcom/bytedance/sdk/component/fl/ABk;

    .line 72
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->cJ(Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->cJ:Ljava/util/concurrent/ExecutorService;

    .line 73
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->ac(Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;)Lcom/bytedance/sdk/component/fl/fl;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->ac:Lcom/bytedance/sdk/component/fl/fl;

    .line 74
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->CJ(Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;)Lcom/bytedance/sdk/component/fl/tP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->CJ:Lcom/bytedance/sdk/component/fl/tP;

    .line 75
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->fl(Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;)Lcom/bytedance/sdk/component/fl/MQ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->fl:Lcom/bytedance/sdk/component/fl/MQ;

    .line 76
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->Tgh(Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;)Lcom/bytedance/sdk/component/fl/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->Tgh:Lcom/bytedance/sdk/component/fl/ac;

    .line 77
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->ROR(Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;)Lcom/bytedance/sdk/component/fl/cJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->Sf:Lcom/bytedance/sdk/component/fl/cJ;

    .line 78
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->Sf(Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;)Lcom/bytedance/sdk/component/fl/kYc;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->ROR:Lcom/bytedance/sdk/component/fl/kYc;

    .line 79
    invoke-static {p1}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->hm(Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;)Lcom/bytedance/sdk/component/fl/EBS;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->hm:Lcom/bytedance/sdk/component/fl/EBS;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;Lcom/bytedance/sdk/component/fl/ac/Tgh$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/fl/ac/Tgh;-><init>(Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;)V

    return-void
.end method

.method public static Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/component/fl/ac/Tgh;
    .locals 0

    .line 119
    new-instance p0, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/fl/ac/Tgh$Qhi;->Qhi()Lcom/bytedance/sdk/component/fl/ac/Tgh;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public CJ()Lcom/bytedance/sdk/component/fl/fl;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->ac:Lcom/bytedance/sdk/component/fl/fl;

    return-object v0
.end method

.method public Qhi()Lcom/bytedance/sdk/component/fl/ABk;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->Qhi:Lcom/bytedance/sdk/component/fl/ABk;

    return-object v0
.end method

.method public ROR()Lcom/bytedance/sdk/component/fl/ac;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->Tgh:Lcom/bytedance/sdk/component/fl/ac;

    return-object v0
.end method

.method public Sf()Lcom/bytedance/sdk/component/fl/kYc;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->ROR:Lcom/bytedance/sdk/component/fl/kYc;

    return-object v0
.end method

.method public Tgh()Lcom/bytedance/sdk/component/fl/MQ;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->fl:Lcom/bytedance/sdk/component/fl/MQ;

    return-object v0
.end method

.method public ac()Lcom/bytedance/sdk/component/fl/EBS;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->hm:Lcom/bytedance/sdk/component/fl/EBS;

    return-object v0
.end method

.method public cJ()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->cJ:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public fl()Lcom/bytedance/sdk/component/fl/tP;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->CJ:Lcom/bytedance/sdk/component/fl/tP;

    return-object v0
.end method

.method public hm()Lcom/bytedance/sdk/component/fl/cJ;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Tgh;->Sf:Lcom/bytedance/sdk/component/fl/cJ;

    return-object v0
.end method
