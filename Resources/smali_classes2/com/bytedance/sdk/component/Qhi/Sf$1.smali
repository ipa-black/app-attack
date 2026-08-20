.class Lcom/bytedance/sdk/component/Qhi/Sf$1;
.super Ljava/lang/Object;
.source "CallHandler.java"

# interfaces
.implements Lcom/bytedance/sdk/component/Qhi/fl$Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/component/Qhi/HzH;Lcom/bytedance/sdk/component/Qhi/fl;Lcom/bytedance/sdk/component/Qhi/ROR;)Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/Qhi/HzH;

.field final synthetic ac:Lcom/bytedance/sdk/component/Qhi/Sf;

.field final synthetic cJ:Lcom/bytedance/sdk/component/Qhi/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Qhi/Sf;Lcom/bytedance/sdk/component/Qhi/HzH;Lcom/bytedance/sdk/component/Qhi/fl;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->ac:Lcom/bytedance/sdk/component/Qhi/Sf;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->Qhi:Lcom/bytedance/sdk/component/Qhi/HzH;

    iput-object p3, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->cJ:Lcom/bytedance/sdk/component/Qhi/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/Object;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->ac:Lcom/bytedance/sdk/component/Qhi/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/component/Qhi/Sf;)Lcom/bytedance/sdk/component/Qhi/Qhi;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->ac:Lcom/bytedance/sdk/component/Qhi/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/component/Qhi/Sf;)Lcom/bytedance/sdk/component/Qhi/Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->ac:Lcom/bytedance/sdk/component/Qhi/Sf;

    invoke-static {v1}, Lcom/bytedance/sdk/component/Qhi/Sf;->cJ(Lcom/bytedance/sdk/component/Qhi/Sf;)Lcom/bytedance/sdk/component/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/Qhi/hm;->Qhi(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/Qhi/CQU;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->Qhi:Lcom/bytedance/sdk/component/Qhi/HzH;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/Qhi/Qhi;->cJ(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/HzH;)V

    .line 159
    iget-object p1, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->ac:Lcom/bytedance/sdk/component/Qhi/Sf;

    invoke-static {p1}, Lcom/bytedance/sdk/component/Qhi/Sf;->ac(Lcom/bytedance/sdk/component/Qhi/Sf;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->cJ:Lcom/bytedance/sdk/component/Qhi/fl;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public Qhi(Ljava/lang/Throwable;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->ac:Lcom/bytedance/sdk/component/Qhi/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/component/Qhi/Sf;)Lcom/bytedance/sdk/component/Qhi/Qhi;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->ac:Lcom/bytedance/sdk/component/Qhi/Sf;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/component/Qhi/Sf;)Lcom/bytedance/sdk/component/Qhi/Qhi;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/component/Qhi/CQU;->Qhi(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->Qhi:Lcom/bytedance/sdk/component/Qhi/HzH;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/Qhi/Qhi;->cJ(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/HzH;)V

    .line 168
    iget-object p1, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->ac:Lcom/bytedance/sdk/component/Qhi/Sf;

    invoke-static {p1}, Lcom/bytedance/sdk/component/Qhi/Sf;->ac(Lcom/bytedance/sdk/component/Qhi/Sf;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Sf$1;->cJ:Lcom/bytedance/sdk/component/Qhi/fl;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
