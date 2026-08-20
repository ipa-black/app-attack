.class public Lcom/appsgeyser/multiTabApp/ui/views/PdfActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PdfActivity.java"


# static fields
.field public static final PATH_FILE:Ljava/lang/String; = "path_file"

.field public static final PERMISSION_REQUEST_CODE:I = 0x70

.field public static final WIDGET_ID:Ljava/lang/String; = "widget_id"


# instance fields
.field private pdfLoader:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00c1

    .line 31
    invoke-virtual {p0, p1}, Lcom/appsgeyser/multiTabApp/ui/views/PdfActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/views/PdfActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/views/PdfActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/views/PdfActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "widget_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->getWidgetByTabId(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/views/PdfActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "path_file"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0a0242

    .line 37
    invoke-virtual {p0, v0}, Lcom/appsgeyser/multiTabApp/ui/views/PdfActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/PDFView;

    .line 38
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/Factory;->getTabsController()Lcom/appsgeyser/multiTabApp/controllers/INavigationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/appsgeyser/multiTabApp/controllers/INavigationController;->getSelectedTab()Lcom/appsgeyser/multiTabApp/controllers/WebContentController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/controllers/WebContentController;->getWidgetInfo()Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v1

    .line 39
    new-instance v2, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3, v1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Ljava/lang/String;Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader$PdfEventListener;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/views/PdfActivity;->pdfLoader:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    .line 41
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 p1, 0x70

    invoke-static {p0, v0, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/PdfActivity;->pdfLoader:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->loadPdfFile()V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x70

    if-ne p1, p2, :cond_0

    .line 51
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/views/PdfActivity;->pdfLoader:Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;

    invoke-virtual {p1}, Lcom/appsgeyser/multiTabApp/pdfreader/PdfLoader;->loadPdfFile()V

    :cond_0
    return-void
.end method
