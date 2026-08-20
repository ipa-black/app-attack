.class final Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;
.super Ljava/lang/Object;
.source "CallHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/Qhi/Sf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Qhi"
.end annotation


# instance fields
.field Qhi:Z

.field cJ:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;->Qhi:Z

    .line 224
    iput-object p2, p0, Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;->cJ:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/String;Lcom/bytedance/sdk/component/Qhi/Sf$1;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Qhi/Sf$Qhi;-><init>(ZLjava/lang/String;)V

    return-void
.end method
