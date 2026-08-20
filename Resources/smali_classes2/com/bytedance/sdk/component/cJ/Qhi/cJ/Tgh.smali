.class final Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field CJ:Z

.field final Qhi:[B

.field ROR:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

.field Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

.field ac:I

.field cJ:I

.field fl:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 24
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->Qhi:[B

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->fl:Z

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->CJ:Z

    return-void
.end method

.method constructor <init>([BIIZZ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->Qhi:[B

    .line 31
    iput p2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->cJ:I

    .line 32
    iput p3, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->ac:I

    .line 33
    iput-boolean p4, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->CJ:Z

    .line 34
    iput-boolean p5, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->fl:Z

    return-void
.end method


# virtual methods
.method final Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;
    .locals 7

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->CJ:Z

    .line 39
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    iget-object v2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->Qhi:[B

    iget v3, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->cJ:I

    iget v4, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->ac:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;)Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;
    .locals 1

    .line 56
    iput-object p0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->ROR:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    iput-object v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    iput-object p1, v0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->ROR:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    return-object p1
.end method

.method public final cJ()Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 44
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->ROR:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    if-eqz v3, :cond_1

    .line 45
    iput-object v0, v3, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    if-eqz v0, :cond_2

    .line 48
    iput-object v3, v0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->ROR:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    .line 50
    :cond_2
    iput-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    .line 51
    iput-object v1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;->ROR:Lcom/bytedance/sdk/component/cJ/Qhi/cJ/Tgh;

    return-object v2
.end method
