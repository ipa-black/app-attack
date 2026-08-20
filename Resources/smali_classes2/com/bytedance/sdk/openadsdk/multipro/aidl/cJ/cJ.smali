.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;
.super Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub;
.source "DislikeClosedListenerImpl.java"


# instance fields
.field private final Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

.field private final cJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;->cJ:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;)Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;)Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;->cJ:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onItemClickClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/cJ/cJ;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method
