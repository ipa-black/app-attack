.class public Lcom/bytedance/sdk/openadsdk/core/settings/hm;
.super Ljava/lang/Object;
.source "MediationConfig.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/sdk/openadsdk/core/settings/hm;",
        ">;"
    }
.end annotation


# instance fields
.field private final CJ:I

.field private final Qhi:Ljava/lang/String;

.field private final ROR:I

.field private final Sf:Ljava/lang/String;

.field private final Tgh:I

.field private final ac:I

.field private final cJ:Ljava/lang/String;

.field private fl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->Qhi:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->cJ:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->ac:I

    .line 20
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->CJ:I

    .line 21
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->fl:Ljava/lang/String;

    .line 22
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    const-string p1, "0"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->fl:Ljava/lang/String;

    .line 25
    :cond_0
    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->Tgh:I

    .line 26
    iput p7, p0, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->ROR:I

    .line 27
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->Sf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Qhi()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->Tgh:I

    return v0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/hm;)I
    .locals 2

    .line 64
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->Tgh:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->Qhi()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->Tgh:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->Qhi()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/settings/hm;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/hm;->Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/hm;)I

    move-result p1

    return p1
.end method
