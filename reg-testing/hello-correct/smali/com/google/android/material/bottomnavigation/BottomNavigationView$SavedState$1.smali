.class final Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState$1;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;
    .locals 2

    .line 601
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;
    .locals 1

    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 593
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 593
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;
    .locals 0

    .line 606
    new-array p1, p1, [Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 593
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState$1;->newArray(I)[Lcom/google/android/material/bottomnavigation/BottomNavigationView$SavedState;

    move-result-object p1

    return-object p1
.end method
