.class public final Lcom/google/android/gms/internal/ads/zzblk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@21.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbkl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "gads:signals_collection_on_service:enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkl;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzblk;->zza:Lcom/google/android/gms/internal/ads/zzbkl;

    return-void
.end method
