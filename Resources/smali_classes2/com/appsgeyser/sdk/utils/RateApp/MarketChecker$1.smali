.class Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$1;
.super Ljava/lang/Object;
.source "MarketChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$1;->this$0:Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;

    iput p2, p0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$1;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$1;->this$0:Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;

    invoke-static {v0}, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;->access$000(Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker;)Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$OnReceiveListener;

    move-result-object v0

    iget v1, p0, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$1;->val$resultCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/appsgeyser/sdk/utils/RateApp/MarketChecker$OnReceiveListener;->onReceive(Z)V

    return-void
.end method
