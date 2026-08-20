.class public Lcom/bytedance/sdk/component/ROR/Qhi;
.super Ljava/lang/Object;
.source "NetClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;
    }
.end annotation


# instance fields
.field private Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

.field private ac:I

.field private cJ:Lcom/bytedance/sdk/component/ROR/ac/Sf;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;-><init>()V

    iget v1, p1, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->Qhi:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 37
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Qhi(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->ac:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ac(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->cJ:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->cJ(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;

    move-result-object v0

    .line 40
    iget-boolean v1, p1, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->CJ:Z

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Lcom/bytedance/sdk/component/ROR/ac/Sf;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ROR/ac/Sf;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->cJ:Lcom/bytedance/sdk/component/ROR/ac/Sf;

    .line 42
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/hm;)Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;

    .line 45
    :cond_0
    iget-object v1, p1, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->fl:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->fl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 46
    iget-object v1, p1, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->fl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/cJ/Qhi/hm;

    .line 47
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/hm;)Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 51
    invoke-static {p1}, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;)Landroid/os/Bundle;

    .line 54
    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->cJ(Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;)Ljava/util/Set;

    .line 56
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;Lcom/bytedance/sdk/component/ROR/Qhi$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ROR/Qhi;-><init>(Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;)V

    return-void
.end method

.method public static Qhi()V
    .locals 1

    .line 102
    sget-object v0, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;->Qhi:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ROR/CJ/Sf;->Qhi(Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;)V

    return-void
.end method

.method private static Qhi(Landroid/content/Context;)Z
    .locals 1

    .line 118
    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/kYc;->cJ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 119
    const-string v0, ":push"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":pushservice"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public CJ()Lcom/bytedance/sdk/component/ROR/cJ/Qhi;
    .locals 2

    .line 114
    new-instance v0, Lcom/bytedance/sdk/component/ROR/cJ/Qhi;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/Qhi;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/zc;)V

    return-object v0
.end method

.method public Qhi(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 89
    invoke-static {v0}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->cJ(Z)V

    .line 90
    invoke-static {p1}, Lcom/bytedance/sdk/component/ROR/Qhi;->Qhi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/kYc;->Qhi(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 91
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->ac:I

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(ILandroid/content/Context;)Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->CJ()V

    .line 92
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->ac:I

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(ILandroid/content/Context;)Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->Qhi()V

    .line 94
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/kYc;->Qhi(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 97
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->ac:I

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(ILandroid/content/Context;)Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->CJ()V

    .line 98
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->ac:I

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(ILandroid/content/Context;)Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->Qhi()V

    return-void
.end method

.method public Qhi(Landroid/content/Context;ZLcom/bytedance/sdk/component/ROR/ac/cJ;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 74
    invoke-interface {p3}, Lcom/bytedance/sdk/component/ROR/ac/cJ;->Qhi()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->ac:I

    .line 75
    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->cJ:Lcom/bytedance/sdk/component/ROR/ac/Sf;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ROR/ac/Sf;->Qhi(I)V

    .line 78
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->ac:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(I)Lcom/bytedance/sdk/component/ROR/ac/ROR;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/ROR/ac/ROR;->Qhi(Z)V

    .line 79
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object p2

    iget v0, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->ac:I

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(I)Lcom/bytedance/sdk/component/ROR/ac/ROR;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/ROR/ac/ROR;->Qhi(Lcom/bytedance/sdk/component/ROR/ac/cJ;)V

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object p2

    iget p3, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->ac:I

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(I)Lcom/bytedance/sdk/component/ROR/ac/ROR;

    move-result-object p2

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/kYc;->Qhi(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/ROR/ac/ROR;->Qhi(Landroid/content/Context;Z)V

    return-void

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tryInitAdTTNet ITTAdNetDepend is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tryInitAdTTNet context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ac()Lcom/bytedance/sdk/component/ROR/cJ/cJ;
    .locals 2

    .line 110
    new-instance v0, Lcom/bytedance/sdk/component/ROR/cJ/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/zc;)V

    return-object v0
.end method

.method public cJ()Lcom/bytedance/sdk/component/ROR/cJ/fl;
    .locals 2

    .line 106
    new-instance v0, Lcom/bytedance/sdk/component/ROR/cJ/fl;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/fl;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/zc;)V

    return-object v0
.end method

.method public fl()Lcom/bytedance/sdk/component/cJ/Qhi/zc;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    return-object v0
.end method
