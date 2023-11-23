import { ComponentFixture, TestBed } from '@angular/core/testing';
import { SharedWebUiComponent } from './shared-web-ui.component';

describe('SharedWebUiComponent', () => {
  let component: SharedWebUiComponent;
  let fixture: ComponentFixture<SharedWebUiComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [SharedWebUiComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(SharedWebUiComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
