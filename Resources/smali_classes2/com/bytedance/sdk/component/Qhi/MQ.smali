.class final Lcom/bytedance/sdk/component/Qhi/MQ;
.super Ljava/lang/Object;
.source "LegacySupportStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Qhi/MQ$Qhi;
    }
.end annotation


# instance fields
.field private CJ:Z

.field private Qhi:Ljava/lang/String;

.field private ac:Lcom/bytedance/sdk/component/Qhi/MQ$Qhi;

.field private cJ:Lcom/bytedance/sdk/component/Qhi/Dww;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/Dww;Lcom/bytedance/sdk/component/Qhi/MQ$Qhi;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Qhi/MQ;->CJ:Z

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/component/Qhi/MQ;->Qhi:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/bytedance/sdk/component/Qhi/MQ;->cJ:Lcom/bytedance/sdk/component/Qhi/Dww;

    .line 24
    iput-object p3, p0, Lcom/bytedance/sdk/component/Qhi/MQ;->ac:Lcom/bytedance/sdk/component/Qhi/MQ$Qhi;

    return-void
.end method
