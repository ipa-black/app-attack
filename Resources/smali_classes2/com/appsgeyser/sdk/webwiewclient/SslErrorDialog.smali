.class Lcom/appsgeyser/sdk/webwiewclient/SslErrorDialog;
.super Ljava/lang/Object;
.source "SslErrorDialog.java"


# instance fields
.field private final activity:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/appsgeyser/sdk/webwiewclient/SslErrorDialog;->activity:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method execute(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 25
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void

    .line 30
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/appsgeyser/sdk/webwiewclient/SslErrorDialog;->activity:Landroid/content/Context;

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    const-string p3, "The site\'s security certificate is not trusted!"

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    const-string v0, "SSL connection error!"

    .line 33
    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/appsgeyser/sdk/webwiewclient/SslErrorDialog$2;

    invoke-direct {v0, p0, p2}, Lcom/appsgeyser/sdk/webwiewclient/SslErrorDialog$2;-><init>(Lcom/appsgeyser/sdk/webwiewclient/SslErrorDialog;Landroid/webkit/SslErrorHandler;)V

    .line 34
    const-string v1, "Proceed anyway"

    invoke-virtual {p3, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance v0, Lcom/appsgeyser/sdk/webwiewclient/SslErrorDialog$1;

    invoke-direct {v0, p0, p2}, Lcom/appsgeyser/sdk/webwiewclient/SslErrorDialog$1;-><init>(Lcom/appsgeyser/sdk/webwiewclient/SslErrorDialog;Landroid/webkit/SslErrorHandler;)V

    .line 40
    const-string p2, "Back to safety"

    invoke-virtual {p3, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
