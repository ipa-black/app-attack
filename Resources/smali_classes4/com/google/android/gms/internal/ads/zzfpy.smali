.class public final enum Lcom/google/android/gms/internal/ads/zzfpy;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfpy;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzfpy;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzfpy;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzfpy;

.field public static final enum zze:Lcom/google/android/gms/internal/ads/zzfpy;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/ads/zzfpy;


# instance fields
.field private final zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfpy;

    const/4 v1, 0x0

    const-string v2, "definedByJavaScript"

    const-string v3, "DEFINED_BY_JAVASCRIPT"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpy;->zza:Lcom/google/android/gms/internal/ads/zzfpy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfpy;

    const/4 v2, 0x1

    const-string v3, "htmlDisplay"

    .line 2
    const-string v4, "HTML_DISPLAY"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzfpy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfpy;->zzb:Lcom/google/android/gms/internal/ads/zzfpy;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfpy;

    const/4 v3, 0x2

    const-string v4, "nativeDisplay"

    .line 3
    const-string v5, "NATIVE_DISPLAY"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfpy;->zzc:Lcom/google/android/gms/internal/ads/zzfpy;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfpy;

    const/4 v4, 0x3

    const-string v5, "video"

    .line 4
    const-string v6, "VIDEO"

    invoke-direct {v3, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzfpy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzfpy;->zzd:Lcom/google/android/gms/internal/ads/zzfpy;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfpy;

    const/4 v5, 0x4

    const-string v6, "audio"

    .line 5
    const-string v7, "AUDIO"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzfpy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/android/gms/internal/ads/zzfpy;->zze:Lcom/google/android/gms/internal/ads/zzfpy;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/gms/internal/ads/zzfpy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpy;->zzf:[Lcom/google/android/gms/internal/ads/zzfpy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfpy;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfpy;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfpy;->zzf:[Lcom/google/android/gms/internal/ads/zzfpy;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfpy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfpy;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpy;->zzg:Ljava/lang/String;

    return-object v0
.end method
