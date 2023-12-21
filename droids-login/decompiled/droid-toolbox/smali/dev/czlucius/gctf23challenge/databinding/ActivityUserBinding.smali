.class public final Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;
.super Ljava/lang/Object;
.source "ActivityUserBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final content:Ldev/czlucius/gctf23challenge/databinding/ContentUserBinding;

.field private final rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final toolbar:Lcom/google/android/material/appbar/MaterialToolbar;


# direct methods
.method private constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldev/czlucius/gctf23challenge/databinding/ContentUserBinding;Lcom/google/android/material/appbar/MaterialToolbar;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 31
    iput-object p2, p0, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;->content:Ldev/czlucius/gctf23challenge/databinding/ContentUserBinding;

    .line 32
    iput-object p3, p0, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;
    .locals 3

    .line 62
    sget v0, Ldev/czlucius/gctf23challenge/R$id;->content:I

    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 67
    invoke-static {v1}, Ldev/czlucius/gctf23challenge/databinding/ContentUserBinding;->bind(Landroid/view/View;)Ldev/czlucius/gctf23challenge/databinding/ContentUserBinding;

    move-result-object v0

    .line 69
    sget v1, Ldev/czlucius/gctf23challenge/R$id;->toolbar:I

    .line 70
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/appbar/MaterialToolbar;

    if-eqz v2, :cond_0

    .line 75
    new-instance v1, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {v1, p0, v0, v2}, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Ldev/czlucius/gctf23challenge/databinding/ContentUserBinding;Lcom/google/android/material/appbar/MaterialToolbar;)V

    return-object v1

    :cond_0
    move v0, v1

    .line 77
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-static {p0, v0, v1}, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;
    .locals 2

    .line 49
    sget v0, Ldev/czlucius/gctf23challenge/R$layout;->activity_user:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {p0}, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;->bind(Landroid/view/View;)Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Ldev/czlucius/gctf23challenge/databinding/ActivityUserBinding;->rootView:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method
