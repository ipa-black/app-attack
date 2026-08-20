.class public final enum Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;
.super Ljava/lang/Enum;
.source "DownloadsItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/browser/DownloadsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

.field public static final enum Fail:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

.field public static final enum InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

.field public static final enum Ok:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;
    .locals 3

    .line 18
    sget-object v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Ok:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    sget-object v1, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    sget-object v2, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Fail:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    filled-new-array {v0, v1, v2}, [Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    const-string v1, "Ok"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Ok:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    .line 20
    new-instance v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    const-string v1, "InProgress"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->InProgress:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    .line 21
    new-instance v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    const-string v1, "Fail"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->Fail:Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    .line 18
    invoke-static {}, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->$values()[Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->$VALUES:[Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;
    .locals 1

    .line 18
    const-class v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;
    .locals 1

    .line 18
    sget-object v0, Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->$VALUES:[Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/browser/DownloadsItem$Status;

    return-object v0
.end method
