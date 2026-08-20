.class public Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;
.super Landroid/app/Dialog;
.source "AppsgeyserProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->setCancelable(Z)V

    .line 17
    sget p1, Lcom/appsgeyser/sdk/R$layout;->appsgeysersdk_progress_dialog:I

    invoke-virtual {p0, p1}, Lcom/appsgeyser/sdk/ui/AppsgeyserProgressDialog;->setContentView(I)V

    return-void
.end method


# virtual methods
.method public show(Landroid/content/Context;)V
    .locals 1

    .line 22
    :try_start_0
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 24
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 25
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 35
    invoke-virtual {p1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/ClassCastException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
