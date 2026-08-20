.class public Lcom/bytedance/sdk/component/fl/cJ/ac;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/Tgh;


# instance fields
.field private CJ:Lcom/bytedance/sdk/component/fl/pA;

.field private Qhi:Ljava/lang/String;

.field private ac:Z

.field private cJ:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLcom/bytedance/sdk/component/fl/pA;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/cJ/ac;->Qhi:Ljava/lang/String;

    .line 30
    iput-boolean p2, p0, Lcom/bytedance/sdk/component/fl/cJ/ac;->cJ:Z

    .line 31
    iput-boolean p3, p0, Lcom/bytedance/sdk/component/fl/cJ/ac;->ac:Z

    .line 32
    iput-object p4, p0, Lcom/bytedance/sdk/component/fl/cJ/ac;->CJ:Lcom/bytedance/sdk/component/fl/pA;

    return-void
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/cJ/ac;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public ac()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/fl/cJ/ac;->ac:Z

    return v0
.end method

.method public cJ()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/fl/cJ/ac;->cJ:Z

    return v0
.end method
