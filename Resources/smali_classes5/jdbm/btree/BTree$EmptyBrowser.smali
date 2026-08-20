.class Ljdbm/btree/BTree$EmptyBrowser;
.super Ljdbm/helper/TupleBrowser;
.source "BTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdbm/btree/BTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyBrowser"
.end annotation


# static fields
.field static INSTANCE:Ljdbm/helper/TupleBrowser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 589
    new-instance v0, Ljdbm/btree/BTree$EmptyBrowser;

    invoke-direct {v0}, Ljdbm/btree/BTree$EmptyBrowser;-><init>()V

    sput-object v0, Ljdbm/btree/BTree$EmptyBrowser;->INSTANCE:Ljdbm/helper/TupleBrowser;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 585
    invoke-direct {p0}, Ljdbm/helper/TupleBrowser;-><init>()V

    return-void
.end method


# virtual methods
.method public getNext(Ljdbm/helper/Tuple;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getPrevious(Ljdbm/helper/Tuple;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
