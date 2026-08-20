.class public Lcom/appsgeyser/multiTabApp/plugins/PluginsLoader;
.super Ljava/lang/Object;
.source "PluginsLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadPlugins(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 0

    const/4 p0, 0x0

    .line 9
    new-array p0, p0, [Lcom/appsgeyser/multiTabApp/plugins/IApplicationPlugin;

    return-void
.end method
