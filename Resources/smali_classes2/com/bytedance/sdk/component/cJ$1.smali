.class Lcom/bytedance/sdk/component/cJ$1;
.super Ljava/lang/Thread;
.source "TTPropHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/cJ;-><init>(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/cJ;Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ$1;->Qhi:Lcom/bytedance/sdk/component/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ;->Qhi()V

    return-void
.end method
