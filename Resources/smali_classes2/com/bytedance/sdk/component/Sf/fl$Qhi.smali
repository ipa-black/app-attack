.class public Lcom/bytedance/sdk/component/Sf/fl$Qhi;
.super Ljava/lang/Object;
.source "PoolTaskStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/Sf/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# instance fields
.field public CJ:Ljava/lang/String;

.field public Qhi:I

.field public ac:Ljava/lang/String;

.field public cJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/bytedance/sdk/component/Sf/fl$Qhi;->ac:Ljava/lang/String;

    .line 153
    iput p2, p0, Lcom/bytedance/sdk/component/Sf/fl$Qhi;->Qhi:I

    .line 154
    iput-object p3, p0, Lcom/bytedance/sdk/component/Sf/fl$Qhi;->CJ:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lcom/bytedance/sdk/component/Sf/fl$Qhi;->cJ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Qhi()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/bytedance/sdk/component/Sf/fl$Qhi;->Qhi:I

    return v0
.end method

.method public Qhi(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/bytedance/sdk/component/Sf/fl$Qhi;->Qhi:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThreadModel{times="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/component/Sf/fl$Qhi;->Qhi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sf/fl$Qhi;->cJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', lastStackStack=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sf/fl$Qhi;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
