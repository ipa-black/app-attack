.class public Lcom/bytedance/sdk/component/cJ/Qhi/pA;
.super Ljava/lang/Object;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;
    }
.end annotation


# instance fields
.field public CJ:Ljava/lang/String;

.field public Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

.field public ac:Lcom/bytedance/sdk/component/cJ/Qhi/WAv;

.field public fl:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/cJ/Qhi/WAv;Ljava/lang/String;Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/WAv;

    .line 22
    iput-object p2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->CJ:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/cJ/Qhi/WAv;[BLcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/WAv;

    .line 28
    iput-object p2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->fl:[B

    .line 29
    iput-object p3, p0, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/WAv;Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/pA;
    .locals 2

    .line 33
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    sget-object v1, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/pA;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/WAv;Ljava/lang/String;Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;)V

    return-object v0
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/WAv;[B)Lcom/bytedance/sdk/component/cJ/Qhi/pA;
    .locals 2

    .line 37
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    sget-object v1, Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;->cJ:Lcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/pA;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/WAv;[BLcom/bytedance/sdk/component/cJ/Qhi/pA$Qhi;)V

    return-object v0
.end method


# virtual methods
.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/pA;->CJ:Ljava/lang/String;

    return-object v0
.end method
