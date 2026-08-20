.class Lcom/appsgeyser/sdk/BrowserActivity$9;
.super Landroid/os/CountDownTimer;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/BrowserActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/BrowserActivity;JJ)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/appsgeyser/sdk/BrowserActivity$9;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity$9;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {v0}, Lcom/appsgeyser/sdk/BrowserActivity;->access$1100(Lcom/appsgeyser/sdk/BrowserActivity;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/appsgeyser/sdk/BrowserActivity$9;->this$0:Lcom/appsgeyser/sdk/BrowserActivity;

    invoke-static {v0}, Lcom/appsgeyser/sdk/BrowserActivity;->access$1000(Lcom/appsgeyser/sdk/BrowserActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
