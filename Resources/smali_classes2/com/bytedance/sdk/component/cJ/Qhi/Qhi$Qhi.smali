.class public final Lcom/bytedance/sdk/component/cJ/Qhi/Qhi$Qhi;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Qhi"
.end annotation


# instance fields
.field Qhi:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/Qhi$Qhi;
    .locals 1

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi$Qhi;->Qhi:Z

    return-object p0
.end method

.method public cJ()Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;
    .locals 1

    .line 19
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/Qhi$Qhi;)V

    return-object v0
.end method
