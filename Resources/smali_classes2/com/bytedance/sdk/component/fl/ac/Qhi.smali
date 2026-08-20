.class public Lcom/bytedance/sdk/component/fl/ac/Qhi;
.super Ljava/lang/Object;
.source "FailBean.java"


# instance fields
.field private Qhi:I

.field private ac:Ljava/lang/Throwable;

.field private cJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi;->Qhi:I

    .line 17
    iput-object p2, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi;->cJ:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi;->ac:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public Qhi()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi;->Qhi:I

    return v0
.end method

.method public ac()Ljava/lang/Throwable;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi;->ac:Ljava/lang/Throwable;

    return-object v0
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/Qhi;->cJ:Ljava/lang/String;

    return-object v0
.end method
