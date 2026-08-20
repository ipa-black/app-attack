.class public final Lcom/bytedance/sdk/component/cJ/Qhi/Tgh;
.super Lcom/bytedance/sdk/component/cJ/Qhi/pA;
.source "FormBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/cJ/Qhi/Tgh$Qhi;
    }
.end annotation


# instance fields
.field Qhi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field cJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/pA;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Tgh;->Qhi:Ljava/util/List;

    .line 12
    iput-object p2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Tgh;->cJ:Ljava/util/List;

    return-void
.end method
