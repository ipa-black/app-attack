.class Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 205
    :try_start_0
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 207
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    invoke-static {p2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->access$000(Lcom/appsgeyser/multiTabApp/MainNavigationActivity;)Z

    move-result p2

    const v0, 0x7f12019c

    if-eqz p2, :cond_0

    .line 208
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;->this$0:Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    const v2, 0x7f0a0196

    invoke-virtual {p2, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3$1;

    invoke-direct {v0, p0, p1}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3$1;-><init>(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$3;Landroid/content/Context;)V

    const p1, 0x7f120233

    .line 209
    invoke-virtual {p2, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 222
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "activityReceiver"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
