.class public Lcom/criteo/publisher/b0/a;
.super Landroid/webkit/WebViewClient;
.source "AdWebViewClient.java"


# instance fields
.field private final a:Lcom/criteo/publisher/b0/c;

.field private final b:Landroid/content/ComponentName;

.field private final c:Lcom/criteo/publisher/b0/b;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/b0/c;Landroid/content/ComponentName;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/criteo/publisher/b0/a;->a:Lcom/criteo/publisher/b0/c;

    .line 42
    iput-object p2, p0, Lcom/criteo/publisher/b0/a;->b:Landroid/content/ComponentName;

    .line 43
    invoke-static {}, Lcom/criteo/publisher/s;->c()Lcom/criteo/publisher/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/criteo/publisher/s;->U0()Lcom/criteo/publisher/b0/b;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/b0/a;->c:Lcom/criteo/publisher/b0/b;

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 48
    iget-object p1, p0, Lcom/criteo/publisher/b0/a;->c:Lcom/criteo/publisher/b0/b;

    iget-object v0, p0, Lcom/criteo/publisher/b0/a;->b:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/criteo/publisher/b0/a;->a:Lcom/criteo/publisher/b0/c;

    invoke-virtual {p1, p2, v0, v1}, Lcom/criteo/publisher/b0/b;->a(Ljava/lang/String;Landroid/content/ComponentName;Lcom/criteo/publisher/b0/c;)V

    const/4 p1, 0x1

    return p1
.end method
