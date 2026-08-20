.class public Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;
.super Ljava/lang/Object;
.source "TrackUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;
    }
.end annotation


# static fields
.field public static Qhi:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;


# instance fields
.field private volatile CJ:Z

.field private final ac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->ac:Ljava/util/Map;

    return-void
.end method

.method private ac()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;->cJ()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method private cJ()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;->Qhi()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;)I
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->Qhi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->ac:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;

    if-nez p1, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->cJ()I

    move-result p1

    return p1

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;->Qhi()I

    move-result p1

    return p1
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->cJ:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;

    return-void
.end method

.method public Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;)V
    .locals 1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->ac:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->CJ:Z

    return-void
.end method

.method public Qhi()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->CJ:Z

    return v0
.end method

.method public cJ(Ljava/lang/String;)I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->ac:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;

    if-nez p1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA;->ac()I

    move-result p1

    return p1

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/pA$Qhi;->cJ()I

    move-result p1

    return p1
.end method
