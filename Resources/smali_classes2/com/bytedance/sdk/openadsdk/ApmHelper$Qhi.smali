.class Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;
.super Ljava/lang/Object;
.source "ApmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/ApmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Qhi"
.end annotation


# instance fields
.field public final Qhi:Ljava/lang/String;

.field public final ac:Ljava/lang/Throwable;

.field public final cJ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;->Qhi:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;->cJ:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;->ac:Ljava/lang/Throwable;

    return-void
.end method
